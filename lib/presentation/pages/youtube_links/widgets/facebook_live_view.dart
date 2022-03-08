import 'package:cached_network_image/cached_network_image.dart';
import 'package:date_format/date_format.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_html/style.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:readmore/readmore.dart';
import 'package:auto_route/auto_route.dart';
import 'package:tech_in_church/application/facebook_live/facebook_live_bloc.dart';
import 'package:tech_in_church/application/youtube_links/youtube_links_bloc.dart';
import 'package:tech_in_church/presentation/core/components/not_loaded.dart';
import 'package:tech_in_church/presentation/core/text.dart';
import 'package:tech_in_church/presentation/pages/youtube_links/v_view.dart';
import 'package:tech_in_church/presentation/pages/youtube_links/widgets/video_frame.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

class FacebookLiveView extends StatelessWidget {
  const FacebookLiveView({Key? key}) : super(key: key);

  void _launchSocial(String url, String fallbackUrl) async {
    // Don't use canLaunch because of fbProtocolUrl (fb://)
    try {
      bool launched =
          await launch(url, forceSafariVC: false, forceWebView: false);
      if (!launched) {
        await launch(fallbackUrl, forceSafariVC: false, forceWebView: false);
      }
    } catch (e) {
      await launch(fallbackUrl, forceSafariVC: false, forceWebView: false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FacebookLiveBloc, FacebookLiveState>(
      builder: (context, state) {
        return LiquidPullToRefresh(
          backgroundColor: Colors.white,
          color: Colors.blue,
          showChildOpacityTransition: false,
          onRefresh: () async {
            context
                .read<FacebookLiveBloc>()
                .add(const FacebookLiveEvent.facebookLiveVideosFetched());
          }, // refresh callback
          child: state.map(
            initial: (_) => const SizedBox(),
            loading: (_) => const Center(
              child: CupertinoActivityIndicator(
                radius: 30,
              ),
            ),
            loadedSuccessfully: (e) => e.facebookLiveVideos.isEmpty
                ? Center(
                    child: Text(Strings.emptyList,
                        style: Theme.of(context).textTheme.subtitle1))
                : ListView.builder(
                    padding:
                        const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                    itemCount: e.facebookLiveVideos.length,
                    itemBuilder: (context, int index) {
                      return Card(
                        elevation: 5,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Container(
                              //   height: 200,
                              //   child: V(url: e.facebookLiveVideos[index].link,key: ValueKey(e.facebookLiveVideos[index].link),)
                              // ),
                              // SizedBox(height: 8,),
                              Row(
                                children: [
                                  Expanded(
                                    child: GestureDetector(
                                      onTap: () {
                                        _launchSocial(
                                            e.facebookLiveVideos[index].link,
                                            e.facebookLiveVideos[index].link);
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8),
                                        child: Text(
                                          e.facebookLiveVideos[index].title,
                                          style: Theme.of(context)
                                              .textTheme
                                              .subtitle1
                                              ?.copyWith(
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  IconButton(
                                      icon: const FaIcon(
                                        FontAwesomeIcons.chevronRight,
                                        color: Colors.black45,
                                      ),
                                      onPressed: () {
                                        _launchSocial(
                                            e.facebookLiveVideos[index].link,
                                            e.facebookLiveVideos[index].link);
                                      })
                                ],
                              ),
                              // SizedBox(
                              //   height: 10,
                              // ),
                              // ReadMoreText(
                              //   e.announcements[index].message,
                              //   trimLines: 2,
                              //   style: Theme.of(context).textTheme.subtitle1?.copyWith(color: Colors.grey.shade600),
                              //   lessStyle: Theme.of(context).textTheme.subtitle1?.copyWith(color: Colors.blue),
                              //   moreStyle: Theme.of(context).textTheme.subtitle1?.copyWith(color: Colors.blue),
                              //   colorClickableText: Colors.pink,
                              //   trimMode: TrimMode.Line,
                              //   trimCollapsedText: 'more',
                              //   trimExpandedText: 'less',
                              // ),
                              // SizedBox(
                              //   height: 5,
                              // ),
                              // CachedNetworkImage(
                              //   height: 200,
                              //   width: 1.sw,
                              //   imageUrl: e.announcements[index].image,
                              //   fit: BoxFit.cover,
                              //   // placeholder: ,
                              // ),
                              // Text(
                              //   e.announcements[index].message,
                              //   style:
                              //       Theme.of(context).textTheme.subtitle1?.copyWith(
                              //             fontWeight: FontWeight.bold,
                              //           ),
                              // ),
                              // Text(
                              //   formatDate(
                              //       DateTime.parse(e.newsletters[index].created_at),
                              //       [M, ' ', dd, ', ', yyyy]),
                              //   style: Theme.of(context)
                              //       .textTheme
                              //       .subtitle2
                              //       ?.copyWith(color: Colors.grey),
                              // ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
            loadedUnSuccessfully: (f) {
              final reason = f.failure.maybeMap(
                  noNetwork: (_) => NotLoadedReason.noNetwork,
                  orElse: () => NotLoadedReason.other);
              return NotLoaded(
                notLoadedReason: reason,
                onTryAgain: () {
                  context
                      .read<FacebookLiveBloc>()
                      .add(const FacebookLiveEvent.facebookLiveVideosFetched());
                },
              );
            },
          ),
        );
      },
    );
  }
}
