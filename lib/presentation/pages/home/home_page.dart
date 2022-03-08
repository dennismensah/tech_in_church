import 'dart:convert';
import 'dart:ui';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_ringtone_player/flutter_ringtone_player.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:tech_in_church/application/auth/auth_bloc.dart';
import 'package:tech_in_church/domain/auth/user_token.dart';
import 'package:tech_in_church/injection.dart';
import 'package:tech_in_church/presentation/core/colors.dart';
import 'package:tech_in_church/presentation/pages/announcements/announcements_pageH.dart';
import 'package:tech_in_church/presentation/pages/chats/chat_categories_page%20copyH.dart';
import 'package:tech_in_church/presentation/pages/chats/counsellor_chatee_pageH.dart';
import 'package:tech_in_church/presentation/pages/home/widgets/drawer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tech_in_church/presentation/pages/home/widgets/home_view.dart';
import 'package:tech_in_church/presentation/pages/offering/offering_pageH.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends HookWidget {
  void showNotification(
      BuildContext context, ValueNotifier<List<String>> messages) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            margin: EdgeInsets.only(
                top: AppBar().preferredSize.height + 10,
                bottom: 10,
                left: 10,
                right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      right: 20, left: 20, top: 20, bottom: 10),
                  child: Text(
                    'Notifications',
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
                const Divider(),
                const SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: messages.value.length == 0
                      ? Center(
                          child: Text(
                            "It's empty here",
                            style: Theme.of(context)
                                .textTheme
                                .subtitle1
                                ?.copyWith(color: Colors.blueGrey),
                          ),
                        )
                      : ListView.builder(
                          itemCount: messages.value.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Card(
                              child: Padding(
                                padding: EdgeInsets.all(20),
                                child: Text(
                                  messages.value[index],
                                  style: Theme.of(context).textTheme.subtitle1,
                                ),
                              ),
                            );
                          },
                        ),
                ),
              ],
            ),
          );
          //   Dialog(
          //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          //   // child: ListView.builder(
          //   //   itemCount: messages.value.length,
          //   //   itemBuilder: (BuildContext context, int index){
          //   //     return Card(
          //   //       child: Padding(
          //   //         padding: EdgeInsets.all(10),
          //   //         child: Text(messages.value[index]),
          //   //       ),
          //   //     );
          //   //   },
          //   // ),
          // );
        });
  }

  @override
  Widget build(BuildContext context) {
    final currentIndex = useState(0);
    final scaffoldKey = GlobalKey<ScaffoldState>();
    bool isCounsellor = context.read<AuthBloc>().state.maybeMap(
        authenticated: (e) => e.usertoken.counsellor == 1,
        unauthenticated: (_) => false,
        orElse: () => false);
    String name = context.read<AuthBloc>().state.maybeMap(
        authenticated: (e) => e.usertoken.user.first_name,
        unauthenticated: (_) => '',
        orElse: () => '');
    String? avatar = context.read<AuthBloc>().state.maybeMap(
        authenticated: (e) => e.usertoken.user.image,
        unauthenticated: (_) => null,
        orElse: () => null);
    final messages = useState<List<String>>([]);
    useEffect(() {
      FirebaseMessaging.onMessage.listen((RemoteMessage message) {
        print('messages ${message.data}');
        final isChat = jsonDecode(message.data['type']) as int == 0;
        if (!isChat) {
          final mess = message.data['message'] as String;
          List<String> oldm = messages.value;
          oldm.add(mess);
          messages.value = oldm;
          print(messages.value.length);
          messages.notifyListeners();
          // messages.value = [...messages.value, mess];
          FlutterRingtonePlayer.play(
            android: AndroidSounds.notification,
            ios: IosSounds.glass,
            asAlarm: false,
          );
        }
      });
    }, const []);
    return Scaffold(
      backgroundColor: AppColors.appColor,
      key: scaffoldKey,
      appBar: AppBar(
        leading: Builder(
          builder: (context) => GestureDetector(
              onTap: () {
                Scaffold.of(context).openDrawer();
              },
              child: Image.asset(
                'assets/images/menu.png',
                color: Colors.white,
                scale: 5,
              )),
        ),
        actions: [
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              GestureDetector(
                onTap: () {
                  showNotification(context, messages);
                },
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    SizedBox(
                      height: 40,
                      width: 40,
                      child: CircleAvatar(
                        child: Icon(
                          Icons.notifications,
                          color: Colors.blue,
                          size: 25,
                        ),
                        backgroundColor: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    )
                  ],
                ),
              ),
              messages.value.length == 0
                  ? SizedBox()
                  : Positioned(
                      left: 0,
                      top: 0,
                      child: CircleAvatar(
                        radius: 9,
                        child: Text(
                          messages.value.length.toString(),
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2
                              ?.copyWith(color: Colors.white),
                        ),
                        backgroundColor: Colors.red,
                      ),
                    )
            ],
          ),
          avatar == null
              ? const SizedBox.shrink()
              : Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 40,
                    width: 40,
                    child: CircleAvatar(
                      backgroundImage: CachedNetworkImageProvider(avatar),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  )
                ],
              ),
        ],
        title: ValueListenableBuilder<Box<UserToken>>(
          valueListenable:
              getIt<HiveInterface>().box<UserToken>('usertoken').listenable(),
          builder: (context, box, widget) {
            final UserToken? usertoken =
                box.values.isEmpty ? null : box.values.first;
            return RichText(
              text: TextSpan(
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    ?.copyWith(color: AppColors.appColor),
                children: [
                  TextSpan(
                    text: 'Hello,',
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        ?.copyWith(color: Colors.white),
                  ),
                  TextSpan(
                    text: '  ${usertoken?.user.first_name}',
                    style: Theme.of(context).textTheme.headline6?.copyWith(
                        color: AppColors.white, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            );
          },
        ),
        // RichText(
        //   text: TextSpan(
        //     style: Theme.of(context)
        //         .textTheme
        //         .headline6
        //         ?.copyWith(color: AppColors.appColor),
        //     children: [
        //       TextSpan(
        //         text: 'Hello,',
        //         style: Theme.of(context)
        //             .textTheme
        //             .headline6
        //             ?.copyWith(color: Colors.white),
        //       ),
        //
        //       TextSpan(
        //         text: '  $name',
        //         style: Theme.of(context).textTheme.headline6?.copyWith(
        //             color: AppColors.white, fontWeight: FontWeight.bold),
        //       ),
        //     ],
        //   ),
        // ),
        // const Text(
        //   'Home',
        //   style: TextStyle(color: Colors.white),
        // ),
        backgroundColor: AppColors.appColor,
        iconTheme: IconThemeData(color: Colors.white),
        elevation: 0.0,
        // centerTitle: true,
        // actions: [
        //   IconButton(icon: Icon(Icons), onPressed: onPressed)
        // ],
      ),
      drawer: const NavigationDrawer(),
      body: Container(
        width: 1.sw,
        height: 1.sh,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15), topRight: Radius.circular(15)),
          color: Colors.white,
        ),
        child: currentIndex.value == 0
            ? HomeView()
            : (currentIndex.value == 1
                ? (isCounsellor
                    ? CounsellorChateePageH()
                    : ChatCategoriesPageH())
                : (currentIndex.value == 2
                    ? AnnouncementsPageH()
                    : OfferingPageH())),
        //HomeView(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, backgroundColor: Colors.white,
        onTap: (int val) {
          currentIndex.value = val;
        },
        currentIndex:
            currentIndex.value, // this will be set when a new tab is tapped
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.chat),
            label: 'Counselling',
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.announcement),
            label: 'Announcement',
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.clean_hands_outlined),
            label: 'Givings',
          ),
        ],
      ),
    );
  }
}
