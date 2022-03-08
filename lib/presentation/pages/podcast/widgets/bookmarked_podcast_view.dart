import 'package:date_format/date_format.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:just_audio/just_audio.dart';
import 'package:seekbar/seekbar.dart';
import 'package:tech_in_church/application/podcast/podcast_bloc.dart';
import 'package:tech_in_church/domain/podcast/podcast.dart';
import 'package:tech_in_church/presentation/core/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookmarkedPodcastView extends HookWidget {
  const BookmarkedPodcastView({Key? key}) : super(key: key);

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
        _value.value = ((event.inSeconds) /
            (currentAudioDurationRaw.value?.inSeconds ?? 0));
        if (event.inSeconds == currentAudioDurationRaw.value?.inSeconds) {
          playing.value = false;
          audioPlayer.value.stop();
        }
      });
    }, [
      audioPlayer.value.durationStream,
      audioPlayer.value.positionStream,
      // audioPlayer.value.bufferedPositionStream
    ]);

    return BlocConsumer<PodcastBloc, PodcastState>(
      listener: (context, state) {
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
        return state.maybeMap(
          initial: (_) => const SizedBox(),
          loading: (_) => const Center(
            child: CupertinoActivityIndicator(
              radius: 30,
            ),
          ),
          loadedSuccessfully: (e) => Column(
            children: [
              Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.symmetric(vertical: 10,horizontal: 8),
                  itemCount: e.bookmarkedPodcasts.length,
                  itemBuilder: (context, int index) {
                    return GestureDetector(
                      onTap: () {
                        showMediaControls.value = true;
                        selectedPodcast.value = e.podcasts[index];
                        audioPlayer.value.setUrl(e.podcasts[index].audio);
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
                                  selectedPodcast.value = e.podcasts[index];

                                  audioPlayer.value
                                      .setUrl(e.podcasts[index].audio);
                                  if (audioPlayer.value.playerState.playing) {
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
                                            selectedPodcast.value?.title ==
                                                e.bookmarkedPodcasts[index]
                                                    .title
                                        ? FontAwesomeIcons.stop
                                        : FontAwesomeIcons.play,
                                    size: 13,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      e.bookmarkedPodcasts[index].title,
                                      style: Theme.of(context)
                                          .textTheme
                                          .subtitle1
                                          ?.copyWith(color: AppColors.appColor),
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
                                              fontWeight: FontWeight.bold,
                                              color: Colors.grey.shade500),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              if (showMediaControls.value == false)
                SizedBox()
              else
                Container(
                  width: 1.sw,
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                  decoration: const BoxDecoration(
                    color: AppColors.appColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                  ),
                  child: !playerReady.value
                      ? Center(
                          child: Text('Buff'),
                        )
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                IconButton(
                                  icon: Icon(
                                    Icons.close,
                                    color: Colors.white,
                                  ),
                                  onPressed: () {
                                    showMediaControls.value = false;
                                  },
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              selectedPodcast.value?.title ?? 'N/A',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6
                                  ?.copyWith(color: Colors.white),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: SeekBar(
                                value: _value.value,
                                // secondValue: _secondValue.value,
                                progressColor: Colors.blue,
                                secondProgressColor:
                                    Colors.blue.withOpacity(0.5),
                                onStartTrackingTouch: () {
                                  print('onStartTrackingTouch');
                                  // if (!_done) {
                                  //   _progressTimer?.cancel();
                                  // }
                                },
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
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    currentAudioDuration.value ?? '',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 33,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
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
                                    playing.value = !playing.value;
                                    audioPlayer.value.setUrl(
                                        selectedPodcast.value?.audio ?? '');
                                    if (audioPlayer.value.playerState.playing) {
                                      audioPlayer.value.pause();
                                    } else {
                                      audioPlayer.value.play();
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
          loadedUnSuccessfully: (_) => Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const FaIcon(
                  FontAwesomeIcons.exclamationCircle,
                  size: 100,
                  color: Colors.red,
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'An error occured. Please try again.',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                )
              ],
            ),
          ),
          orElse: () => SizedBox(),
        );
      },
    );
  }
}
