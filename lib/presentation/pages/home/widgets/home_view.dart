import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:date_format/date_format.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:readmore/readmore.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tech_in_church/application/home/home_bloc.dart';
import 'package:auto_route/auto_route.dart';
import 'package:tech_in_church/injection.dart';
import 'package:tech_in_church/presentation/core/colors.dart';
import 'package:tech_in_church/presentation/core/components/not_loaded.dart';
import 'package:tech_in_church/presentation/pages/youtube_links/widgets/video_frame.dart';
import 'package:tech_in_church/presentation/routes/router.gr.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

class HomeGridItem {
  final String text;
  final IconData icon;
  const HomeGridItem({required this.text, required this.icon});
}

class HomeView extends StatelessWidget {
  final items = const [
    HomeGridItem(text: 'Activities', icon: Icons.work),
    HomeGridItem(text: 'Events', icon: Icons.event),
    HomeGridItem(text: 'Audio', icon: Icons.music_note),
    HomeGridItem(text: 'Videos', icon: Icons.video_call_outlined),
  ];

  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LiquidPullToRefresh(
      backgroundColor: Colors.white,
      color: Colors.blue,
      showChildOpacityTransition: false,
      onRefresh: () async {
        context.read<HomeBloc>().add(const HomeEvent.homeItemsFetched());
      }, // refresh callback
      child: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return state.map(
            initial: (_) => const SizedBox(),
            loading: (_) => const Center(
              child: CupertinoActivityIndicator(
                radius: 30,
              ),
            ),
            loadedSuccessfully: (e) {
              return SingleChildScrollView(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    const SizedBox(
                      height: 4,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.panorama_vertical_select,
                          color: AppColors.appColor,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Verse of the day',
                          style:
                              Theme.of(context).textTheme.subtitle1?.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.appColor,
                                  ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5, top: 10),
                      child: Text(
                        e.homeItems.quotation
                            .replaceAll('/n', '')
                            .split('-')[0],
                        style: Theme.of(context)
                            .textTheme
                            .subtitle1
                            ?.copyWith(color: Colors.grey.shade800),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          e.homeItems.quotation
                              .replaceAll('/n', '')
                              .split('-')[1],
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1
                              ?.copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    if (e.homeItems.featured_video == null)
                      const SizedBox.shrink()
                    else
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Icon(
                                Icons.notification_important_sharp,
                                color: AppColors.appColor,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Featured Video',
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1
                                    ?.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.appColor,
                                    ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          VideoFrame(
                            url: e.homeItems.featured_video?.link ?? '',
                            key: const ValueKey(1),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Divider(),
                        ],
                      ),
                    const SizedBox(
                      height: 5,
                    ),
                    if (e.homeItems.announcement.isEmpty)
                      const SizedBox.shrink()
                    else
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Icon(
                                Icons.notification_important_sharp,
                                color: AppColors.appColor,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Announcement',
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1
                                    ?.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.appColor,
                                    ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            e.homeItems.announcement.first.title ?? '',
                            style:
                                Theme.of(context).textTheme.subtitle1?.copyWith(
                                      color: Colors.black87,
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          ReadMoreText(
                            e.homeItems.announcement.first.message ?? '',
                            trimLines: 3,
                            style: Theme.of(context)
                                .textTheme
                                .subtitle1
                                ?.copyWith(color: Colors.grey.shade600),
                            lessStyle: Theme.of(context)
                                .textTheme
                                .subtitle2
                                ?.copyWith(color: Colors.blue),
                            moreStyle: Theme.of(context)
                                .textTheme
                                .subtitle2
                                ?.copyWith(color: Colors.blue),
                            colorClickableText: Colors.pink,
                            trimMode: TrimMode.Line,
                            trimCollapsedText: ' ...more',
                            trimExpandedText: ' less',
                            delimiter: '',
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Divider(),
                          const SizedBox(
                            height: 5,
                          ),
                        ],
                      ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.video_call,
                          color: AppColors.appColor,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Quick Recap',
                          style:
                              Theme.of(context).textTheme.subtitle1?.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.appColor,
                                  ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: 200,
                              childAspectRatio: 1.2,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10),
                      itemCount: 4,
                      itemBuilder: (BuildContext ctx, index) {
                        final count = index == 0
                            ? e.homeItems.activities_number.toString()
                            : (index == 1
                                ? e.homeItems.events_number.toString()
                                : (index == 2
                                    ? e.homeItems.audio_number.toString()
                                    : e.homeItems.videos_number.toString()));
                        return GestureDetector(
                          onTap: () {
                            switch (index) {
                              case 0:
                                context.router
                                    .push(const UpcomingActivitiesRoute());
                                break;
                              case 1:
                                context.router.push(const NonPayEventsRoute());
                                break;
                              case 2:
                                context.router.push(const PodcastRoute());
                                break;
                              case 3:
                                context.router.push(const YoutubeLinksRoute());
                                break;
                            }
                          },
                          child: Stack(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: Colors.grey)),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      items[index].icon,
                                      size: 60,
                                      color: Colors.blue,
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      items[index].text,
                                      style: Theme.of(context)
                                          .textTheme
                                          .subtitle1
                                          ?.copyWith(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.grey.shade700),
                                    ),
                                  ],
                                ),
                              ),
                              int.parse(count) == 0
                                  ? const SizedBox.shrink()
                                  : Positioned(
                                      right: 7,
                                      top: 7,
                                      child: CircleAvatar(
                                        child: Text(count),
                                      ),
                                    ),
                            ],
                          ),
                        );
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              );
            },
            loadedUnSuccessfully: (f) {
              final reason = f.failure.maybeMap(
                  noNetwork: (_) => NotLoadedReason.noNetwork,
                  orElse: () => NotLoadedReason.other);
              return NotLoaded(
                notLoadedReason: reason,
                onTryAgain: () {
                  context
                      .read<HomeBloc>()
                      .add(const HomeEvent.homeItemsFetched());
                },
              );
            },
            //     (_) => SingleChildScrollView(
            //   physics: const AlwaysScrollableScrollPhysics(),
            //   child: Column(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       // const Icon(
            //       //   Icons.eleven_mp,
            //       //   size: 100,
            //       //   color: Colors.red,
            //       // ),
            //       // const SizedBox(
            //       //   height: 15,
            //       // ),
            //       // Padding(
            //       //   padding: const EdgeInsets.symmetric(horizontal: 20),
            //       //   child: Text(
            //       //     'An error occured. Please try again.',
            //       //     style: Theme.of(context).textTheme.headline6,
            //       //   ),
            //       // )
            //     ],
            //   ),
            // ),
          );
        },
      ),
    );
  }
}
