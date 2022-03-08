import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:tech_in_church/application/facebook_live/facebook_live_bloc.dart';
import 'package:tech_in_church/application/youtube_links/youtube_links_bloc.dart';
import 'package:tech_in_church/injection.dart';
import 'package:tech_in_church/presentation/core/colors.dart';
import 'package:tech_in_church/presentation/pages/youtube_links/widgets/facebook_live_view.dart';
import 'package:tech_in_church/presentation/pages/youtube_links/widgets/youtube_links_view.dart';

class YoutubeLinksPage extends HookWidget {
  const YoutubeLinksPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final currentIndex = useState(0);
    return MultiBlocProvider(
      providers: [
        BlocProvider<YoutubeLinksBloc>(
          create: (context) =>  getIt<YoutubeLinksBloc>()
            ..add(const YoutubeLinksEvent.youtubeLinksFetched()),
        ),
        BlocProvider<FacebookLiveBloc>(
          create: (context) => getIt<FacebookLiveBloc>()
            ..add(const FacebookLiveEvent.facebookLiveVideosFetched()),
        ),
      ],
      child: Scaffold(
        backgroundColor: AppColors.appColor,
        appBar: AppBar(
          title: const Text(
            'Videos',
            style: TextStyle(color: Colors.white,fontFamily: 'Raleway'),
          ),
          backgroundColor: AppColors.appColor,
          iconTheme: const IconThemeData(color: Colors.white),
          elevation: 0.0,
        ),
        body: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15), topRight: Radius.circular(15)),
            color: Colors.white,
          ),
          child:
              currentIndex.value == 0 ? const YoutubeLinksView() : const FacebookLiveView(),
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (int val) {
            currentIndex.value = val;
          },
          currentIndex:
              currentIndex.value, // this will be set when a new tab is tapped
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.video_call),
              label: 'Sermons',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.video_collection_outlined),
              label: 'Facebook Live',
            ),
          ],
        ),
      ),
    );
  }
}
