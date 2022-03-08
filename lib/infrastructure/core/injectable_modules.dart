import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:dio/dio.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

@module
abstract class InjectableModules {
  @lazySingleton
  Dio get dio => Dio(
        BaseOptions(baseUrl: 'https://demo.techinchurch.com/api/v1/'),
      )..interceptors.add(
          PrettyDioLogger(
            requestHeader: true,
            requestBody: true,
            responseBody: true,
            responseHeader: false,
            error: true,
            compact: true,
            maxWidth: 90,
          ),
        );
  @lazySingleton
  DataConnectionChecker get dataConnectionChecker => DataConnectionChecker();
  @lazySingleton
  FirebaseMessaging get firebaseMessaging => FirebaseMessaging.instance;
  @lazySingleton
  HiveInterface get db => Hive;
  @lazySingleton
  FacebookLogin get facebookLogin => FacebookLogin();
  @lazySingleton
  GoogleSignIn get googleLogin => GoogleSignIn(
        scopes: [
          'email',
          // 'https://www.googleapis.com/auth/contacts.readonly',
        ],
      );
}
