// @dart=2.9
import 'dart:convert';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:tech_in_church/domain/auth/i_auth_local_datasource.dart';
import 'package:tech_in_church/domain/auth/user_token.dart';
import 'package:tech_in_church/domain/bible_chapter/bible_chapter.dart';
import 'package:tech_in_church/domain/bible_chapter/bible_verse.dart';
import 'package:tech_in_church/injection.dart';
import 'package:tech_in_church/presentation/app_widget.dart';
import 'package:path_provider/path_provider.dart';
import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:tech_in_church/domain/auth/user.dart';
import 'dart:async';
import 'dart:io';

import 'domain/auth/user_token.dart';
import 'domain/chats/chat.dart';
import 'domain/chats/chat_message.dart';
import 'package:timezone/data/latest_all.dart' as tz;
import 'package:flutter_native_timezone/flutter_native_timezone.dart';

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
  final isChat = jsonDecode(message.data['type']) as int == 0;
  if (!isChat) {
    final mess = message.data['message'] as String;
    AwesomeNotifications().createNotification(
      content: NotificationContent(
        id: 10,
        channelKey: 'basic_channel',
        title: 'New notification',
        body: mess,
      ),
    );
  }
}

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  tz.initializeTimeZones();
  await Firebase.initializeApp();
  final messaging = FirebaseMessaging.instance;
  messaging.getToken().then((value) {
    print(value);
  });
  // Init Awesome Notifications
  AwesomeNotifications().initialize('resource://drawable/ic_stat_launcher', [
    NotificationChannel(
      channelKey: 'basic_channel',
      channelName: 'Basic notifications',
      channelDescription: 'Notification channel for basic tests',
    )
  ]);
  // Init Firebase
  await Firebase.initializeApp();
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

  FirebaseMessaging.onMessage.listen((RemoteMessage message) async {
    print('messaging started');
    final isChat = jsonDecode(message.data['type']) as int == 0;
    if (!isChat) {
      final mess = message.data['message'] as String;
      AwesomeNotifications().createNotification(
        content: NotificationContent(
          id: 10,
          channelKey: 'basic_channel',
          title: 'Notification',
          body: mess,
        ),
      );
    }
    // else {
    //   final a = getIt<IAuthLocalDatasource>();
    //   final u = await a.getUser();
    //   final userid = u.fold(() => 0, (a) => a.user.id);
    //   final c = message.data;
    //   final d = c['conversation'];
    //   final decoded = jsonDecode(d) as Map<String, dynamic>;
    //   final chat = Chat.fromJson(decoded);
    //   if(chat.messages.first.sender==userid) return;
    //   AwesomeNotifications().createNotification(
    //     content: NotificationContent(
    //       id: 10,
    //       channelKey: 'basic_channel',
    //       title: chat.messages.first.sendername,
    //       body: chat.messages.first.message,
    //     ),
    //   );
    // }
  });

  // Disable landscape mode
  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
  );
  // Dark text on light background
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
    statusBarColor: Colors.blue,
    statusBarBrightness: Brightness.light,
  ));
  SystemChrome.setEnabledSystemUIMode (SystemUiMode.immersive, overlays: []);
  // Initialize hive
  final appDocumentDir = await getApplicationDocumentsDirectory();
  Hive.init(appDocumentDir.path);
  Hive.registerAdapter(UserAdapter());
  Hive.registerAdapter(UserTokenAdapter());
  Hive.registerAdapter(BibleVerseAdapter());
  Hive.registerAdapter(BibleChapterAdapter());
  await Hive.openBox<UserToken>('usertoken');
  await Hive.openBox<BibleChapter>('biblechapter');
  await Hive.openBox<String>('subdomain');
  await Hive.openBox<String>('timezone');
  // Initialize the dependency injection module
  configureInjection(Environment.prod);
  runApp(AppWidget());
}
