import 'package:auto_route/auto_route.dart';
import 'package:date_format/date_format.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:just_audio/just_audio.dart';
import 'package:seekbar/seekbar.dart';
import 'package:tech_in_church/application/podcast/podcast_actions/podcast_actions_bloc.dart';
import 'package:tech_in_church/application/podcast/podcast_bloc.dart';
import 'package:tech_in_church/domain/podcast/podcast.dart';
import 'package:tech_in_church/presentation/core/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tech_in_church/presentation/core/components/not_loaded.dart';
import 'package:tech_in_church/presentation/core/notification_helper.dart';
import 'package:tech_in_church/presentation/core/text.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

class PodcastView extends HookWidget {
  const PodcastView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _value = useState(0.0);
    final selectedPodcast = useState<Podcast?>(null);
    final playing = useState(false);
    final showMediaControls = useState(false);
    final currentAudioDuration = useState<String?>(null);
    final currentAudioDurationRaw = useState<Duration?>(null);
    final playerReady = useState(true);

    final audioPlayer = useState(AudioPlayer());
    useEffect(() {
      audioPlayer.value.durationStream.listen((event) {
        currentAudioDurationRaw.value = event;
        final a = event?.toString().split(':');
        currentAudioDuration.value =
            '${a![1]} : ${(double.tryParse(a[2]) ?? 0.0).toInt()}';
      });
      audioPlayer.value.positionStream.listen((event) {
        print(event.toString());
        if (event.toString() == '0:00:00.000000') {
          _value.value = 0.0;
        } else {
          _value.value = ((event.inSeconds) /
              (currentAudioDurationRaw.value?.inSeconds ?? 0));
        }

        if (event.inSeconds == currentAudioDurationRaw.value?.inSeconds) {
          playing.value = false;
          audioPlayer.value.stop();
        }
      });
      return () {
        audioPlayer.value.stop();
      };
    }, [
      audioPlayer.value.durationStream,
      audioPlayer.value.positionStream,
    ]);

    return BlocConsumer<PodcastBloc, PodcastState>(
      listener: (context, state) {
        context.read<PodcastActionsBloc>().state.map(
              initial: (_) {},
              loading: (_) {},
              podcastBookmarkedSuccessfully: (_) {
                NotificationHelper.showInfo(context, 'Podcast Bookmarked Successfully');
                // FlushbarHelper.createSuccess(
                //     message: 'Podcast Bookmarked Successfully');
                // context.read<PodcastBloc>().add(PodcastEvent.podcastFetched());
              },
              podcastBookmarkedUnsuccessfully: (_) {
                NotificationHelper.showError(context, 'Failed To bookmark Podcast');
                // FlushbarHelper.createError(
                //     message: 'Failed To bookmark Podcast');
              },
              downloadedSuccessfully: (_) {},
              downloadFailed: (_) {},
            );
        // state.maybeMap(
        //   downloadFailed: (e) {
        //     FlushbarHelper.createError(
        //       message: e.podcastFailure.maybeMap(
        //           serverError: (_) => 'Failed to download audio file',
        //           noNetwork: (_) => 'Please check your internet connection',
        //           orElse: () => 'An error'),
        //     ).show(context);
        //   },
        //   downloadedSuccessfully: (_) {
        //     FlushbarHelper.createSuccess(
        //             message: 'Audio file downloaded successfully')
        //         .show(context);
        //   },
        //   orElse: () {},
        // );
      },
      builder: (context, state) {
        return LiquidPullToRefresh(
          backgroundColor: Colors.white,
          color: Colors.blue,
          showChildOpacityTransition: false,
          onRefresh: () async {
            context
                .read<PodcastBloc>()
                .add(const PodcastEvent.podcastFetched());
          }, // refresh callback
          child: state.maybeMap(
            initial: (_) => const SizedBox(),
            loading: (_) => const Center(
              child: CupertinoActivityIndicator(
                radius: 30,
              ),
            ),
            loadedSuccessfully: (e) => e.podcasts.isEmpty
                ? Center(
                    child: Text(Strings.emptyList,
                        style: Theme.of(context).textTheme.subtitle1))
                : Column(
                    children: [
                      Expanded(
                        child: ListView.builder(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 8),
                          itemCount: e.podcasts.length,
                          itemBuilder: (context, int index) {
                            debugPrint(e.podcasts[index].bookmark.toString());
                            return GestureDetector(
                              onTap: () {
                                showMediaControls.value = true;
                                selectedPodcast.value = e.podcasts[index];
                                audioPlayer.value
                                    .setUrl(e.podcasts[index].audio);
                              },
                              child: Card(
                                elevation: 5,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 15),
                                  child: Row(
                                    children: [
                                      GestureDetector(
                                        onTap: () async {
                                          playing.value = !playing.value;
                                          showMediaControls.value = true;
                                          selectedPodcast.value =
                                              e.podcasts[index];

                                          audioPlayer.value
                                              .setUrl(e.podcasts[index].audio);
                                          if (audioPlayer
                                              .value.playerState.playing) {
                                            audioPlayer.value.pause();
                                          } else {
                                            audioPlayer.value.play();
                                          }

                                          // play(selectedPodcast.value,e.podcasts[index].id);
                                        },
                                        child: CircleAvatar(
                                          backgroundColor: AppColors.appColor,
                                          radius: 15,
                                          child: FaIcon(
                                            playing.value &&
                                                    selectedPodcast
                                                            .value?.title ==
                                                        e.podcasts[index].title
                                                ? FontAwesomeIcons.stop
                                                : FontAwesomeIcons.play,
                                            size: 13,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 15,
                                      ),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              e.podcasts[index].title,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .subtitle1
                                                  ?.copyWith(
                                                      color:
                                                          AppColors.appColor),
                                            ),
                                            const SizedBox(
                                              height: 12,
                                            ),
                                            Text(
                                              '${formatDate(DateTime.parse(e.podcasts[index].created_at), [
                                                    MM,
                                                    ' ',
                                                    dd,
                                                    ' ',
                                                    yyyy
                                                  ])} -  ${formatDate(DateTime.parse(e.podcasts[index].created_at), [
                                                    HH,
                                                    ':',
                                                    nn,
                                                    ' ',
                                                    am
                                                  ])}',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .subtitle2
                                                  ?.copyWith(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color:
                                                          Colors.grey.shade500),
                                            ),
                                          ],
                                        ),
                                      ),
                                      e.podcasts[index].bookmark == 0
                                          ? IconButton(
                                              icon: const CircleAvatar(
                                                  backgroundColor:
                                                      AppColors.appColor,
                                                  child: Icon(
                                                    Icons.bookmark,
                                                    color: AppColors.white,
                                                  )),
                                              onPressed: () {
                                                context
                                                    .read<PodcastActionsBloc>()
                                                    .add(PodcastActionsEvent
                                                        .podcastBookmarked(e
                                                            .podcasts[index]
                                                            .id));
                                              })
                                          : const SizedBox.shrink(),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      if (showMediaControls.value == false)
                        const SizedBox.shrink()
                      else
                        Container(
                          width: 1.sw,
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 5),
                          decoration: const BoxDecoration(
                            color: AppColors.appColor,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15),
                            ),
                          ),
                          child: !playerReady.value
                              ? const Center(
                                  child: Text('Buff'),
                                )
                              : Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        IconButton(
                                          icon: const Icon(
                                            Icons.close,
                                            color: Colors.white,
                                          ),
                                          onPressed: () {
                                            showMediaControls.value = false;
                                          },
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      selectedPodcast.value?.title ?? 'N/A',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline6
                                          ?.copyWith(color: Colors.white),
                                    ),
                                    const SizedBox(
                                      height: 30,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      child: SeekBar(
                                        value: _value.value,
                                        // secondValue: _secondValue.value,
                                        progressColor: Colors.grey,
                                        secondProgressColor:
                                            Colors.blue.withOpacity(0.5),
                                        barColor: Colors.white,
                                        onStartTrackingTouch: () {},
                                        onProgressChanged: (value) {
                                          print('onProgressChanged:$value');
                                          _value.value = value;
                                        },
                                        onStopTrackingTouch: () {
                                          print('onStopTrackingTouch');
                                          // if (!_done) {
                                          //   _resumeProgressTimer();
                                          // }
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 5),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text(
                                            currentAudioDuration.value ?? '',
                                            style: const TextStyle(
                                                color: Colors.white),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 33,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        // GestureDetector(
                                        //   onTap: () {
                                        //     context.read<PodcastBloc>().add(
                                        //           PodcastEvent.audioDownloaded(
                                        //               selectedPodcast.value?.audio ??
                                        //                   '',
                                        //               selectedPodcast
                                        //                       .value?.audio_filename
                                        //                       .split('/')
                                        //                       .last ??
                                        //                   ''),
                                        //         );
                                        //   },
                                        //   child: CircleAvatar(
                                        //     backgroundColor: Colors.white,
                                        //     radius: 25,
                                        //     child: FaIcon(FontAwesomeIcons.download),
                                        //   ),
                                        // ),
                                        // SizedBox(
                                        //   width: 30,
                                        // ),
                                        GestureDetector(
                                          onTap: () async {
                                            // playing.value = !playing.value;
                                            // audioPlayer.value.setUrl(
                                            //     selectedPodcast.value?.audio ?? '');
                                            if (audioPlayer
                                                .value.playerState.playing) {
                                              audioPlayer.value.pause();
                                              playing.value = !playing.value;
                                            } else {
                                              audioPlayer.value.play();
                                              playing.value = !playing.value;
                                            }
                                            // play(selectedPodcast.value,e.podcasts[index].id);
                                          },
                                          child: CircleAvatar(
                                            radius: 25,
                                            backgroundColor: Colors.white,
                                            child: FaIcon(
                                              playing.value
                                                  ? FontAwesomeIcons.stop
                                                  : FontAwesomeIcons.play,
                                              color: AppColors.appColor,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                        ),
                    ],
                  ),
            loadedUnSuccessfully: (f) {
              final reason = f.failure.maybeMap(
                  noNetwork: (_) => NotLoadedReason.noNetwork,
                  orElse: () => NotLoadedReason.other);
              return NotLoaded(
                notLoadedReason: reason,
                onTryAgain: () {
                  context
                      .read<PodcastBloc>()
                      .add(const PodcastEvent.podcastFetched());
                },
              );
            },
            orElse: () => const SizedBox.shrink(),
          ),
        );
      },
    );
  }
}
