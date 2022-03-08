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
import 'package:tech_in_church/application/announcements/announcements_bloc.dart';
import 'package:tech_in_church/application/newsletters/newsletters_bloc.dart';
import 'package:auto_route/auto_route.dart';
import 'package:tech_in_church/presentation/core/components/not_loaded.dart';
import 'package:tech_in_church/presentation/core/text.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

class AnnouncementsView extends StatelessWidget {
  const AnnouncementsView({Key? key}) : super(key: key);

  void showModal(BuildContext context, String title, String message,
      String date, String creator) {
    showDialog(
      context: context,
      builder: (ctx) {
        return Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12), topRight: Radius.circular(12)),
            color: Colors.white,
          ),
          margin: EdgeInsets.symmetric(horizontal: 0.03.sw, vertical: 0.2.sh),

          height: 100,
          // width: 0.8.sw,
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                alignment: Alignment.center,
                width: 1.sw,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12)),
                  color: Colors.grey.shade200,
                ),
                child: Text(
                  title,
                  style: Theme.of(context)
                      .textTheme
                      .headline6
                      ?.copyWith(color: Colors.blueGrey),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Created by :  $creator',
                        style: Theme.of(context)
                            .textTheme
                            .subtitle2
                            ?.copyWith(color: Colors.grey.shade500),
                      ),
                      Text(
                        'Created on :  $date',
                        style: Theme.of(context)
                            .textTheme
                            .subtitle2
                            ?.copyWith(color: Colors.grey.shade500),
                      ),
                      Html(
                        data: message,
                        style: {'font-size': Style(fontSize: FontSize.large)},
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  context.router.pop();
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                  alignment: Alignment.center,
                  width: 1.sw,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                  ),
                  child: Text(
                    'Close',
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        ?.copyWith(color: Colors.blueGrey),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AnnouncementsBloc, AnnouncementsState>(
      builder: (context, state) {
        return LiquidPullToRefresh(
          backgroundColor: Colors.white,
          color: Colors.blue,
          showChildOpacityTransition: false,
          onRefresh: () async {
            context
                .read<AnnouncementsBloc>()
                .add(const AnnouncementsEvent.announcementFetched());
          }, // refresh callback
          child: state.map(
            initial: (_) => const SizedBox(),
            loading: (_) => const Center(
              child: CupertinoActivityIndicator(
                radius: 30,
              ),
            ),
            loadedSuccessfully: (e) => e.announcements.isEmpty
                ? Center(
                    child: Text(Strings.emptyList,
                        style: Theme.of(context).textTheme.subtitle1))
                : ListView.builder(
                    padding:
                        const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                    itemCount: e.announcements.length,
                    itemBuilder: (context, int index) {
                      return Card(
                        elevation: 5,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                e.announcements[index].title,
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1
                                    ?.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              ReadMoreText(
                                e.announcements[index].message,
                                trimLines: 2,
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
                              SizedBox(
                                height: 5,
                              ),
                              e.announcements[index].image == null
                                  ? const SizedBox.shrink()
                                  : CachedNetworkImage(
                                      height: 200,
                                      width: 1.sw,
                                      imageUrl: e.announcements[index].image,
                                      fit: BoxFit.cover,
                                    ),
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
                      .read<AnnouncementsBloc>()
                      .add(const  AnnouncementsEvent.announcementFetched());
                },
              );
            },
          ),
        );
      },
    );
  }
}
