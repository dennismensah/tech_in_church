import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:date_format/date_format.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:readmore/readmore.dart';
import 'package:tech_in_church/application/gallery/gallery_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tech_in_church/application/non_pay_event/non_pay_event_bloc.dart';
import 'package:tech_in_church/application/non_pay_event/non_pay_events_actions/non_pay_events_actions_bloc.dart';
import 'package:tech_in_church/application/offering/offering_bloc.dart';
import 'package:tech_in_church/domain/gallery/gallery_image.dart';
import 'package:auto_route/auto_route.dart';
import 'package:tech_in_church/domain/non_pay_event/non_pay_event.dart';
import 'package:tech_in_church/injection.dart';
import 'package:tech_in_church/presentation/core/colors.dart';
import 'package:tech_in_church/presentation/core/components/not_loaded.dart';
import 'package:tech_in_church/presentation/core/notification_helper.dart';
import 'package:tech_in_church/presentation/pages/non_pay_events/payment_page.dart';
import 'package:tech_in_church/presentation/routes/router.gr.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

class NonPayEventView extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldstate;
  const NonPayEventView({Key? key, required this.scaffoldstate})
      : super(key: key);
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
                      ?.copyWith(color: AppColors.appColor),
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
                      (states) => AppColors.appColor,
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

  showConfirmDialog(BuildContext ccontext, NonPayEvent event) {
    showDialog(
      context: ccontext,
      builder: (context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              RichText(
                text: TextSpan(
                    text: 'Do you want to be registered for the ',
                    style: Theme.of(context).textTheme.subtitle1,
                    children: [
                      TextSpan(
                        text: '${event.title}',
                        style: Theme.of(context)
                            .textTheme
                            .subtitle1
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: ' event ?',
                        style: Theme.of(context).textTheme.subtitle1,
                      )
                    ]),
              ),
              // Text(
              //   'Do you want to be registered for the $event event ?',
              //   style: Theme.of(context).textTheme.subtitle1,
              // ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                      style: ButtonStyle(
                        padding: MaterialStateProperty.resolveWith((states) =>
                            EdgeInsets.symmetric(horizontal: 15, vertical: 5)),
                        side: MaterialStateProperty.resolveWith(
                          (states) => const BorderSide(color: Colors.white),
                        ),
                        shape: MaterialStateProperty.resolveWith(
                          (states) => RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                        ),
                        textStyle: MaterialStateProperty.resolveWith(
                          (states) => TextStyle(
                            fontSize: 18.sp,
                            color: AppColors.appColor,
                          ),
                        ),
                      ),
                      onPressed: () {
                        context.router.pop();
                      },
                      child: Text(
                        'No',
                        style: TextStyle(color: Theme.of(context).primaryColor),
                      )),
                  ElevatedButton(
                    style: ButtonStyle(
                      padding: MaterialStateProperty.resolveWith((states) =>
                          const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 5)),
                      backgroundColor: MaterialStateProperty.resolveWith(
                        (states) => AppColors.appColor,
                      ),
                      shape: MaterialStateProperty.resolveWith(
                        (states) => RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                      textStyle: MaterialStateProperty.resolveWith(
                        (states) => TextStyle(fontSize: 16.sp),
                      ),
                    ),
                    onPressed: () {
                      if (event.type == 1) {
                        context.router.pop();
                        context.router.push(PaymentRoute(
                            scaffoldstate: scaffoldstate,
                            id: event.id,
                            amount: event.amount));
                      } else {
                        context.router.pop();
                        ccontext.read<NonPayEventsActionsBloc>().add(
                              NonPayEventsActionsEvent.nonPayEventRegistered(
                                  event.id),
                            );
                      }
                      // context.read<AuthBloc>().add(const AuthEvent.signedOut());
                      // context.router.pop();
                      // context.router.navigate(const LandingRoute());
                      // // ExtendedNavigator.of(context).pop();
                      // // ExtendedNavigator.of(context).pop();
                      // // context.read<AuthBloc>().add(const AuthEvent.signedOut());
                      // // ExtendedNavigator.of(context).replace(Routes.landingPage);
                    },
                    child: Text('Yes'),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<NonPayEventsActionsBloc, NonPayEventsActionsState>(
      listener: (context, state) {
        state.maybeMap(
          registeredSuccessfully: (_) {
            context
                .read<NonPayEventBloc>()
                .add(const NonPayEventEvent.nonPayEventFetched());
            NotificationHelper.showInfo(
                context, 'Your registration was successful');
            // FlushbarHelper.createSuccess(
            //         message: 'Your registration was successful')
            //     .show(context);
          },
          registeredUnsuccessfully: (_) {
            NotificationHelper.showError(
                context, 'Failed to register for event');
            // FlushbarHelper.createError(message: 'Failed to register for event')
            //     .show(context);
          },
          orElse: () {},
        );
      },
      child: BlocConsumer<NonPayEventBloc, NonPayEventState>(
        listener: (context, state) {},
        builder: (ccontext, state) {
          return LiquidPullToRefresh(
            backgroundColor: Colors.white,
            color: Colors.blue,
            showChildOpacityTransition: false,
            onRefresh: () async {
              context
                  .read<NonPayEventBloc>()
                  .add(const NonPayEventEvent.nonPayEventFetched());
            }, // refresh callback
            child: state.maybeMap(
              orElse: () => const SizedBox(),
              initial: (_) => const SizedBox(),
              loading: (_) => const Center(
                child: CupertinoActivityIndicator(
                  radius: 30,
                ),
              ),
              loadedSuccessfully: (e) => ListView.builder(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                itemCount: e.nonPayEvents.length,
                itemBuilder: (context, int index) {
                  return Stack(
                    children: [
                      Card(
                        elevation: 5,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  formatDate(
                                      DateTime.parse(
                                          e.nonPayEvents[index].created_at),
                                      [M, ' ', dd, ', ', yyyy,'   ',h,':',mm,' ',am]),
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle2
                                      ?.copyWith(color: Colors.grey),
                                ),
                              ),
                              const SizedBox(height: 8,),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    e.nonPayEvents[index].title,
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle1
                                        ?.copyWith(
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15, vertical: 10),
                                    decoration: BoxDecoration(
                                      color: e.nonPayEvents[index].type == 0
                                          ? Colors.grey
                                          : Colors.blue,
                                      border: Border.all(
                                          color: e.nonPayEvents[index].type == 0
                                              ? Colors.grey
                                              : Colors.blue),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Text(
                                      e.nonPayEvents[index].type == 0
                                          ? 'Free'
                                          : 'Not Free',
                                      style: Theme.of(context)
                                          .textTheme
                                          .subtitle2
                                          ?.copyWith(
                                              color:
                                                  e.nonPayEvents[index].type ==
                                                          0
                                                      ? Colors.white
                                                      : Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 7,
                              ),
                              ReadMoreText(
                                e.nonPayEvents[index].description,
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
                              const SizedBox(
                                height: 7,
                              ),
                              CachedNetworkImage(
                                height: 200,
                                width: 1.sw,
                                imageUrl: e.nonPayEvents[index].image,
                                fit: BoxFit.cover,
                              ),
                            ],
                          ),
                        ),
                      ),
                      e.nonPayEvents[index].registered == 1
                          ? SizedBox()
                          : Positioned(
                              bottom: 4,
                              right: 4,
                              child: GestureDetector(
                                onTap: () {
                                  showConfirmDialog(
                                      ccontext, e.nonPayEvents[index]);
                                },
                                child: Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white,
                                      boxShadow: const [
                                        BoxShadow(
                                            blurRadius: 7,
                                            color: Colors.black12,
                                            offset: Offset(1, 2))
                                      ]),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.auto_stories,
                                        color: Theme.of(context).primaryColor,
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        'Register',
                                        style: Theme.of(context)
                                            .textTheme
                                            .subtitle2
                                            ?.copyWith(
                                              color: Theme.of(context)
                                                  .primaryColor,
                                            ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                    ],
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
                        .read<NonPayEventBloc>()
                        .add(const NonPayEventEvent.nonPayEventFetched());
                  },
                );
              },
            ),
          );
        },
      ),
    );
  }
}
