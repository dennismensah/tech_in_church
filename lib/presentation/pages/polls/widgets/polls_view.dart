import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:date_format/date_format.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tech_in_church/application/auth/auth_bloc.dart';
import 'package:tech_in_church/application/gallery/gallery_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tech_in_church/application/polls/poll_actions/poll_actions_bloc.dart';
import 'package:tech_in_church/application/polls/polls_bloc.dart';
import 'package:tech_in_church/domain/gallery/gallery_image.dart';
import 'package:auto_route/auto_route.dart';
import 'package:tech_in_church/presentation/core/colors.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';
import 'package:tech_in_church/presentation/core/components/not_loaded.dart';
import 'package:tech_in_church/presentation/core/notification_helper.dart';

class PollsView extends StatelessWidget {
  const PollsView({Key? key}) : super(key: key);

  void showModal(
      BuildContext context, List<GalleryImage> images, String title) {
    showDialog(
      context: context,
      builder: (ctx) {
        return Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
              bottomLeft: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
            color: Colors.white,
          ),
          margin: EdgeInsets.symmetric(horizontal: 0.03.sw, vertical: 0.2.sh),
          height: 100,
          child: Column(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                alignment: Alignment.center,
                width: 1.sw,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12)),
                  // color: Colors.grey.shade200,
                ),
                child: Text(
                  title,
                  style: Theme.of(context)
                      .textTheme
                      .headline6
                      ?.copyWith(color: Colors.blueGrey),
                ),
              ),
              Expanded(
                child: CarouselSlider(
                  options: CarouselOptions(
                    enlargeCenterPage: true,
                  ),
                  items: images.map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return CachedNetworkImage(
                          imageUrl: i.image,
                          fit: BoxFit.fill,
                        );
                      },
                    );
                  }).toList(),
                ),
              ),
              SizedBox(
                width: 1.sw,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith(
                      (states) => Colors.blueGrey.shade200,
                    ),
                    shape: MaterialStateProperty.resolveWith(
                      (states) => const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12),
                        ),
                      ),
                    ),
                    textStyle: MaterialStateProperty.resolveWith(
                      (states) => TextStyle(fontSize: 20.sp),
                    ),
                  ),
                  onPressed: () {
                    context.router.pop();
                  },
                  child: Text(
                    'Close',
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        ?.copyWith(color: Colors.white),
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
    return BlocBuilder<PollsBloc, PollsState>(
      builder: (context, state) {
        String mask = context.read<AuthBloc>().state.maybeMap(
            authenticated: (a) => a.usertoken.user.mask,
            unauthenticated: (_) => '',
            orElse: () => '');
        return LiquidPullToRefresh(
          backgroundColor: Colors.white,
          color: Colors.blue,
          showChildOpacityTransition: false,
          onRefresh: () async {
            context
                .read<PollsBloc>()
                .add(const PollsEvent.pollsFetched());
          }, // refresh callback
          child: state.map(
            initial: (_) => const SizedBox(),
            loading: (_) => const Center(
              child: CupertinoActivityIndicator(
                radius: 30,
              ),
            ),
            loadedSuccessfully: (e) => ListView.builder(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
              itemCount: e.polls.length,
              itemBuilder: (context, int index) {
                return BlocListener<PollActionsBloc, PollActionsState>(
                  listener: (context, state) {
                    state.maybeMap(
                        loadedSuccessfully: (_) {
                          context
                              .read<PollsBloc>()
                              .add(const PollsEvent.pollsFetched());
                          NotificationHelper.showInfo(context, 'Voted successfully for poll');
                          // FlushbarHelper.createSuccess(
                          //         message: 'Voted successfully for poll')
                          //     .show(context);
                        },
                        loadedUnSuccessfully: (r) {
                          NotificationHelper.showError(context, r.message);
                          // FlushbarHelper.createError(message: r.message)
                          //     .show(context);
                        },
                        orElse: () => null);
                  },
                  child: Card(
                    elevation: 5,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            e.polls[index].title,
                            style:
                                Theme.of(context).textTheme.subtitle1?.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            e.polls[index].question,
                            style:
                                Theme.of(context).textTheme.subtitle1?.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                              children: e.polls[index].results
                                  .map(
                                    (f) => Padding(
                                      padding: const EdgeInsets.only(right: 10),
                                      child: Row(
                                        children: [
                                          if (f.total > 0)
                                            Row(
                                              children: [
                                                CircleAvatar(
                                                    child: Text(
                                                  f.total.toString(),
                                                )),
                                                const SizedBox(
                                                  width: 5,
                                                ),
                                              ],
                                            ),
                                          ElevatedButton(
                                            style: ButtonStyle(
                                              padding: MaterialStateProperty
                                                  .resolveWith((states) =>
                                                      const EdgeInsets.all(
                                                          10.0)),
                                              backgroundColor:
                                                  MaterialStateProperty
                                                      .resolveWith(
                                                (states) => f.voted == true
                                                    ? Colors.blue
                                                    : AppColors.white,
                                              ),
                                              shape: MaterialStateProperty
                                                  .resolveWith(
                                                (states) =>
                                                    RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                ),
                                              ),
                                              side: MaterialStateProperty
                                                  .resolveWith(
                                                (states) => const BorderSide(
                                                    color: AppColors.appColor),
                                              ),
                                              textStyle: MaterialStateProperty
                                                  .resolveWith(
                                                (states) => TextStyle(
                                                    fontSize: 15.sp,
                                                    color: f.voted == true
                                                        ? Colors.white
                                                        : Colors.grey),
                                              ),
                                            ),
                                            onPressed: () {
                                              context
                                                  .read<PollActionsBloc>()
                                                  .add(PollActionsEvent.voted(
                                                      mask,
                                                      e.polls[index].id,
                                                      f.id));
                                            },
                                            child: Text(
                                              f.answer,
                                              style: TextStyle(
                                                  color: f.voted == true
                                                      ? Colors.white
                                                      : Colors.black),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                  .toList()),
                        ],
                      ),
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
                      .read<PollsBloc>()
                      .add(const PollsEvent.pollsFetched());
                },
              );
            },
          ),
        );
      },
    );
  }
}
