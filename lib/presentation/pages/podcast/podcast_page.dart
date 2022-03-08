import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:tech_in_church/application/podcast/podcast_actions/podcast_actions_bloc.dart';
import 'package:tech_in_church/application/podcast/podcast_bloc.dart';
import 'package:tech_in_church/injection.dart';
import 'package:tech_in_church/presentation/core/colors.dart';
import 'package:tech_in_church/presentation/core/notification_helper.dart';
import 'package:tech_in_church/presentation/pages/podcast/widgets/bookmarked_podcast_view.dart';
import 'package:tech_in_church/presentation/pages/podcast/widgets/podcast_view.dart';

class PodcastPage extends HookWidget {
  const PodcastPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final currentIndex = useState(0);
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              getIt<PodcastBloc>()..add(const PodcastEvent.podcastFetched()),
        ),
        BlocProvider(
          create: (context) => getIt<PodcastActionsBloc>(),
        ),
      ],
      child: Scaffold(
        backgroundColor: AppColors.appColor,
        appBar: AppBar(
          title: const Text(
            'Podcasts',
            style: TextStyle(color: Colors.white,fontFamily: 'Raleway'),
          ),
          backgroundColor: AppColors.appColor,
          iconTheme: const IconThemeData(color: Colors.white),
          elevation: 0.0,
        ),
        body: BlocListener<PodcastActionsBloc, PodcastActionsState>(
          listener: (context, state) {
            state.maybeMap(
                podcastBookmarkedSuccessfully: (_) {
                  currentIndex.value = 1;
                  context
                      .read<PodcastBloc>()
                      .add(const PodcastEvent.podcastFetched());
                  NotificationHelper.showInfo(context, 'Podcast bookmarked successfully');
                  // FlushbarHelper.createSuccess(
                  //     message: 'Podcast bookmarked successfully').show(context);
                },
                podcastBookmarkedUnsuccessfully: (_) {
                  NotificationHelper.showError(context, 'Failed to bookmark podcast');
                  // FlushbarHelper.createError(
                  //     message: 'Failed to bookmark podcast').show(context);
                },
                orElse: () {});
          },
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15), topRight: Radius.circular(15)),
              color: Colors.white,
            ),
            child: currentIndex.value == 0
                ? const PodcastView()
                : const BookmarkedPodcastView(),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (int val) {
            currentIndex.value = val;
          },
          currentIndex:
              currentIndex.value, // this will be set when a new tab is tapped
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.audiotrack),
              label: 'All',
            ),
            BottomNavigationBarItem(
              icon:  Icon(Icons.bookmark),
              label: 'Bookmarked',
            ),
          ],
        ),
      ),
    );
  }
}
