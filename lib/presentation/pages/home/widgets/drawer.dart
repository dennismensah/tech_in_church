import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:tech_in_church/application/auth/auth_bloc.dart';
import 'package:tech_in_church/domain/auth/user_token.dart';
import 'package:tech_in_church/presentation/core/colors.dart';
import 'package:tech_in_church/presentation/pages/chats/widgets/counsellor_chatMsg_view.dart';
import 'package:tech_in_church/presentation/routes/router.gr.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../../injection.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({
    Key? key,
  }) : super(key: key);

  void showLogoutConsentDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: 10,
              ),
              Text(
                'Are you sure you want to logout ?',
                style: TextStyle(fontSize: 18.sp),
              ),
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
                        'Cancel',
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
                      context.read<AuthBloc>().add(const AuthEvent.signedOut());
                      context.router.pop();
                      context.router.navigate(const LandingRoute());
                      // ExtendedNavigator.of(context).pop();
                      // ExtendedNavigator.of(context).pop();
                      // context.read<AuthBloc>().add(const AuthEvent.signedOut());
                      // ExtendedNavigator.of(context).replace(Routes.landingPage);
                    },
                    child: Text('OK'),
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
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        bool isCounsellor = context.read<AuthBloc>().state.maybeMap(
            authenticated: (e) => e.usertoken.counsellor == 1,
            unauthenticated: (_) => false,
            orElse: () => false);
        return ClipRRect(
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(17),
            bottomRight: Radius.circular(17),
          ),
          child: Drawer(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              color: AppColors.appColor,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        IconButton(
                                          onPressed: () {
                                            context.router.pop();
                                          },
                                          icon: const Icon(
                                            Icons.close,
                                            size: 25,
                                            color: Colors.white,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(
                                          height: 50,
                                          width: 50,
                                          child: CircleAvatar(
                                            backgroundImage: state.maybeMap(
                                                authenticated: (u) {
                                                  if (u.usertoken.user.image ==
                                                      null) {
                                                    return const AssetImage(
                                                        'assets/images/pers.png');
                                                  } else {
                                                    return CachedNetworkImageProvider(
                                                        u.usertoken.user
                                                            .image!);
                                                  }
                                                },
                                                orElse: () => const AssetImage(
                                                    'assets/images/pers.png')),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15.0),
                                    child: ValueListenableBuilder<Box<UserToken>>(
                                      valueListenable:
                                      getIt<HiveInterface>().box<UserToken>('usertoken').listenable(),
                                      builder: (context, box, widget) {
                                        final UserToken? usertoken =
                                        box.values.isEmpty ? null : box.values.first;
                                        return Text(
                                          state.maybeMap(
                                              authenticated: (u) =>
                                              '${usertoken?.user.first_name?? ''} ${usertoken?.user.last_name?? ''}',
                                              orElse: () => 'N/A'),
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline6
                                              ?.copyWith(
                                            color: Colors.white,
                                          ),
                                        );
                                      },
                                    ),
                                    // Text(
                                    //   state.maybeMap(
                                    //       authenticated: (u) =>
                                    //           '${u.usertoken.user.first_name} ${u.usertoken.user.last_name}',
                                    //       orElse: () => 'N/A'),
                                    //   style: Theme.of(context)
                                    //       .textTheme
                                    //       .headline6
                                    //       ?.copyWith(
                                    //         color: Colors.white,
                                    //       ),
                                    // ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15.0),
                                    child: ValueListenableBuilder<Box<UserToken>>(
                                      valueListenable:
                                      getIt<HiveInterface>().box<UserToken>('usertoken').listenable(),
                                      builder: (context, box, widget) {
                                        final UserToken? usertoken =
                                        box.values.isEmpty ? null : box.values.first;
                                        return Text(
                                          state.maybeMap(
                                              authenticated: (u) =>
                                              usertoken?.user.email?? '',
                                              orElse: () => 'N/A'),
                                          style: Theme.of(context)
                                              .textTheme
                                              .subtitle2
                                              ?.copyWith(color: Colors.white60),
                                        );
                                      },
                                    ),
                                    // Text(
                                    //   state.maybeMap(
                                    //       authenticated: (u) =>
                                    //           u.usertoken.user.email,
                                    //       orElse: () => 'N/A'),
                                    //   style: Theme.of(context)
                                    //       .textTheme
                                    //       .subtitle2
                                    //       ?.copyWith(color: Colors.white60),
                                    // ),
                                  ),
                                  const SizedBox(
                                    height: 13,
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 7,
                            ),
                            ListTile(
                              onTap: () {
                                context.router.pop();
                                context.router.push(const GalleryRoute());
                              },
                              horizontalTitleGap: 0,
                              leading: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.perm_media,
                                    color: AppColors.appColor,
                                  ),
                                ],
                              ),
                              title: Text(
                                'Gallery',
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1
                                    ?.copyWith(color: Colors.blueGrey.shade900),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            ListTile(
                              onTap: () {
                                context.router.pop();
                                context.router.push(const PodcastRoute());
                              },
                              horizontalTitleGap: 0,
                              leading: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.radio,
                                    color: AppColors.appColor,
                                  ),
                                ],
                              ),
                              title: Text(
                                'Podcasts',
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1
                                    ?.copyWith(color: Colors.blueGrey.shade900),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            ListTile(
                              onTap: () {
                                context.router.pop();
                                context.router.push(const ChurchTodayRoute());
                              },
                              horizontalTitleGap: 0,
                              leading: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.house,
                                    color: AppColors.appColor,
                                  ),
                                ],
                              ),
                              title: Text(
                                'Church Today',
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1
                                    ?.copyWith(color: Colors.blueGrey.shade900),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            ListTile(
                              onTap: () {
                                context.router.pop();
                                if (isCounsellor) {
                                  context.router.push(CounsellorChateeRoute());
                                } else {
                                  context.router
                                      .push(const ChatCategoriesRoute());
                                }
                              },
                              horizontalTitleGap: 0,
                              leading: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.message,
                                    color: AppColors.appColor,
                                  ),
                                ],
                              ),
                              title: Text(
                                'Chats',
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1
                                    ?.copyWith(color: Colors.blueGrey.shade900),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            ListTile(
                              onTap: () {
                                context.router.pop();
                                context.router.push(const OfferingRoute());
                              },
                              horizontalTitleGap: 0,
                              leading: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.clean_hands_outlined,
                                    color: AppColors.appColor,
                                  ),
                                ],
                              ),
                              title: Text(
                                'Givings',
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1
                                    ?.copyWith(color: Colors.blueGrey.shade900),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            ListTile(
                              onTap: () {
                                context.router.pop();
                                context.router.push(const BibleRoute());
                              },
                              horizontalTitleGap: 0,
                              leading: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.book_outlined,
                                    color: AppColors.appColor,
                                  ),
                                ],
                              ),
                              title: Text(
                                'Bible',
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1
                                    ?.copyWith(color: Colors.blueGrey.shade900),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            ListTile(
                              onTap: () {
                                context.router.pop();
                                context.router
                                    .push(const UpcomingActivitiesRoute());
                              },
                              horizontalTitleGap: 0,
                              leading: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.event,
                                    color: AppColors.appColor,
                                  ),
                                ],
                              ),
                              title: Text(
                                'Upcoming Activities',
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1
                                    ?.copyWith(color: Colors.blueGrey.shade900),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            ListTile(
                              onTap: () {
                                context.router.pop();
                                context.router.push(const NewslettersRoute());
                              },
                              horizontalTitleGap: 0,
                              leading: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.create_new_folder_sharp,
                                    color: AppColors.appColor,
                                  ),
                                ],
                              ),
                              title: Text(
                                'Newsletters',
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1
                                    ?.copyWith(color: Colors.blueGrey.shade900),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            ListTile(
                              onTap: () {
                                context.router.pop();
                                context.router.push(const AnnouncementsRoute());
                              },
                              horizontalTitleGap: 0,
                              leading: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.announcement,
                                    color: AppColors.appColor,
                                  ),
                                ],
                              ),
                              title: Text(
                                'Announcements',
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1
                                    ?.copyWith(color: Colors.blueGrey.shade900),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            ListTile(
                              onTap: () {
                                context.router.pop();
                                context.router.push(const YoutubeLinksRoute());
                              },
                              horizontalTitleGap: 0,
                              leading: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.video_collection,
                                    color: AppColors.appColor,
                                  ),
                                ],
                              ),
                              title: Text(
                                'Videos',
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1
                                    ?.copyWith(color: Colors.blueGrey.shade900),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            ListTile(
                              onTap: () {
                                context.router.pop();
                                context.router.push(const PollsRoute());
                              },
                              horizontalTitleGap: 0,
                              leading: Icon(
                                Icons.poll,
                                color: AppColors.appColor,
                              ),
                              title: Text(
                                'Polls',
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1
                                    ?.copyWith(color: Colors.blueGrey.shade900),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            ListTile(
                              onTap: () {
                                context.router.pop();
                                context.router.push(const NonPayEventsRoute());
                              },
                              horizontalTitleGap: 0,
                              leading: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.event,
                                    color: AppColors.appColor,
                                  ),
                                ],
                              ),
                              title: Text(
                                'Events',
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1
                                    ?.copyWith(color: Colors.blueGrey.shade900),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            ListTile(
                              onTap: () {
                                context.router.pop();
                                context.router
                                    .push(const UpdatePasswordRoute());
                              },
                              horizontalTitleGap: 0,
                              leading: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.vpn_key,
                                    color: AppColors.appColor,
                                  ),
                                ],
                              ),
                              title: Text(
                                'Update Password',
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1
                                    ?.copyWith(color: Colors.blueGrey.shade900),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            ListTile(
                              onTap: () {
                                context.router.pop();
                                context.router.push(const UpdateProfileRoute());
                              },
                              horizontalTitleGap: 0,
                              leading: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.account_circle,
                                    color: AppColors.appColor,
                                  ),
                                ],
                              ),
                              title: Text(
                                'Profile',
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1
                                    ?.copyWith(color: Colors.blueGrey.shade900),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            ListTile(
                              onTap: () {
                                showLogoutConsentDialog(context);
                              },
                              horizontalTitleGap: 0,
                              leading: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.logout,
                                    color: AppColors.appColor,
                                  ),
                                ],
                              ),
                              title: Text(
                                'Logout',
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1
                                    ?.copyWith(color: Colors.blueGrey.shade900),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
