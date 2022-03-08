// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:data_connection_checker/data_connection_checker.dart' as _i3;
import 'package:dio/dio.dart' as _i4;
import 'package:firebase_messaging/firebase_messaging.dart' as _i6;
import 'package:flutter_facebook_login/flutter_facebook_login.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i7;
import 'package:hive/hive.dart' as _i8;
import 'package:injectable/injectable.dart' as _i2;

import 'application/announcements/announcements_bloc.dart' as _i94;
import 'application/auth/auth_bloc.dart' as _i95;
import 'application/auth/forgot_password/forgot_password_bloc.dart' as _i103;
import 'application/auth/registration/registration_bloc.dart' as _i91;
import 'application/auth/sign_in/sign_in_bloc.dart' as _i92;
import 'application/auth/validate_subdomain/validate_subdomain_bloc.dart'
    as _i93;
import 'application/bible_chapter/bible_chapter_bloc.dart' as _i96;
import 'application/chat/chat_actions/chat_actions_bloc.dart' as _i97;
import 'application/chat/chat_bloc.dart' as _i98;
import 'application/chat/counsellor_chatee/counsellor_chatee_bloc.dart'
    as _i101;
import 'application/chat_category/chat_category_bloc.dart' as _i99;
import 'application/church_today/church_today_bloc.dart' as _i100;
import 'application/facebook_live/facebook_live_bloc.dart' as _i102;
import 'application/gallery/gallery_bloc.dart' as _i104;
import 'application/home/home_bloc.dart' as _i105;
import 'application/newsletters/newsletters_bloc.dart' as _i61;
import 'application/non_pay_event/non_pay_event_bloc.dart' as _i62;
import 'application/non_pay_event/non_pay_events_actions/non_pay_events_actions_bloc.dart'
    as _i63;
import 'application/offering/offering_bloc.dart' as _i64;
import 'application/podcast/podcast_actions/podcast_actions_bloc.dart' as _i65;
import 'application/podcast/podcast_bloc.dart' as _i66;
import 'application/polls/poll_actions/poll_actions_bloc.dart' as _i67;
import 'application/polls/polls_bloc.dart' as _i68;
import 'application/upcoming_activities/upcoming_activities_bloc.dart' as _i69;
import 'application/update_password/update_password_bloc.dart' as _i70;
import 'application/update_profile/update_profile_bloc.dart' as _i71;
import 'application/youtube_links/youtube_links_bloc.dart' as _i72;
import 'domain/announcements/i_announcement_remote_datasource.dart' as _i73;
import 'domain/announcements/i_announcement_repository.dart' as _i75;
import 'domain/auth/i_auth_local_datasource.dart' as _i9;
import 'domain/auth/i_auth_remote_datasource.dart' as _i11;
import 'domain/auth/i_auth_repository.dart' as _i77;
import 'domain/bible_chapter/i_bible_chapter_local_datasource.dart' as _i13;
import 'domain/bible_chapter/i_bible_chapter_remote_datasource.dart' as _i15;
import 'domain/bible_chapter/i_bible_chapter_repository.dart' as _i79;
import 'domain/chats/i_chat_remote_datasource.dart' as _i17;
import 'domain/chats/i_chat_repository.dart' as _i81;
import 'domain/church_today/i_church_today_remote_datasource.dart' as _i19;
import 'domain/church_today/i_church_today_repository.dart' as _i83;
import 'domain/core/i_network_info.dart' as _i27;
import 'domain/facebook_live/i_facebook_live_remote_datasource.dart' as _i21;
import 'domain/facebook_live/i_facebook_live_repository.dart' as _i85;
import 'domain/gallery/i_gallery_remote_datasource.dart' as _i23;
import 'domain/gallery/i_gallery_repository.dart' as _i87;
import 'domain/home/home_remote_datasource.dart' as _i25;
import 'domain/home/i_home_repository.dart' as _i89;
import 'domain/newsletters/i_newsletter_remote_datasource.dart' as _i29;
import 'domain/newsletters/i_newsletter_repository.dart' as _i31;
import 'domain/non_pay_event/i_non_pay_event_remote_datasource.dart' as _i33;
import 'domain/non_pay_event/i_non_pay_event_repository.dart' as _i35;
import 'domain/offering/i_offering_remote_datasource.dart' as _i37;
import 'domain/offering/i_offering_repository.dart' as _i39;
import 'domain/podcast/i_podcast_remote_datasource.dart' as _i41;
import 'domain/podcast/i_podcast_repository.dart' as _i43;
import 'domain/polls/i_poll_remote_datasource.dart' as _i45;
import 'domain/polls/i_poll_repository.dart' as _i47;
import 'domain/profile/i_profile_remote_datasource.dart' as _i49;
import 'domain/profile/i_profile_repository.dart' as _i51;
import 'domain/upcoming_activities/i_upcoming_activities_remote_datasource.dart'
    as _i53;
import 'domain/upcoming_activities/i_upcoming_activities_repository.dart'
    as _i55;
import 'domain/youtube_links/i_youtube_link_remote_datasource.dart' as _i57;
import 'domain/youtube_links/i_youtube_link_repository.dart' as _i59;
import 'infrastructure/announcements/announcements_remote_datasource.dart'
    as _i74;
import 'infrastructure/announcements/announcements_repository.dart' as _i76;
import 'infrastructure/auth/auth_local_datasource.dart' as _i10;
import 'infrastructure/auth/auth_remote_datasource.dart' as _i12;
import 'infrastructure/auth/auth_repository.dart' as _i78;
import 'infrastructure/bible_chapter/bible_chapter_local_datasource.dart'
    as _i14;
import 'infrastructure/bible_chapter/bible_chapter_remote_datasource.dart'
    as _i16;
import 'infrastructure/bible_chapter/bible_chapter_repository.dart' as _i80;
import 'infrastructure/chat/chat_remote_datasource.dart' as _i18;
import 'infrastructure/chat/chat_repository.dart' as _i82;
import 'infrastructure/church_today/church_today_remote_datasource.dart'
    as _i20;
import 'infrastructure/church_today/church_today_repository.dart' as _i84;
import 'infrastructure/core/injectable_modules.dart' as _i106;
import 'infrastructure/core/network_info.dart' as _i28;
import 'infrastructure/facebook_live/facebook_live_remote_datasource.dart'
    as _i22;
import 'infrastructure/facebook_live/facebook_live_repository.dart' as _i86;
import 'infrastructure/gallery/gallery_remote_datasource.dart' as _i24;
import 'infrastructure/gallery/gallery_repository.dart' as _i88;
import 'infrastructure/home/home_remote_datasource.dart' as _i26;
import 'infrastructure/home/home_repository.dart' as _i90;
import 'infrastructure/newsletters/newsletters_remote_datasource.dart' as _i30;
import 'infrastructure/newsletters/newsletters_repository.dart' as _i32;
import 'infrastructure/non_pay_events/non_pay_event_remote_datasource.dart'
    as _i34;
import 'infrastructure/non_pay_events/non_pay_event_repository.dart' as _i36;
import 'infrastructure/offering/offering_remote_datasource.dart' as _i38;
import 'infrastructure/offering/offering_repository.dart' as _i40;
import 'infrastructure/podcast/podcast_remote_datasource.dart' as _i42;
import 'infrastructure/podcast/podcast_repository.dart' as _i44;
import 'infrastructure/polls/poll_remote_datasource.dart' as _i46;
import 'infrastructure/polls/poll_repository.dart' as _i48;
import 'infrastructure/profile/profile_remote_datasource.dart' as _i50;
import 'infrastructure/profile/profile_repository.dart' as _i52;
import 'infrastructure/upcoming_activities/upcoming_activity_datasource.dart'
    as _i54;
import 'infrastructure/upcoming_activities/upcoming_activity_repository.dart'
    as _i56;
import 'infrastructure/youtube_links/youtube_link_remote_datasource.dart'
    as _i58;
import 'infrastructure/youtube_links/youtube_link_repository.dart'
    as _i60; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final injectableModules = _$InjectableModules();
  gh.lazySingleton<_i3.DataConnectionChecker>(
      () => injectableModules.dataConnectionChecker);
  gh.lazySingleton<_i4.Dio>(() => injectableModules.dio);
  gh.lazySingleton<_i5.FacebookLogin>(() => injectableModules.facebookLogin);
  gh.lazySingleton<_i6.FirebaseMessaging>(
      () => injectableModules.firebaseMessaging);
  gh.lazySingleton<_i7.GoogleSignIn>(() => injectableModules.googleLogin);
  gh.lazySingleton<_i8.HiveInterface>(() => injectableModules.db);
  gh.factory<_i9.IAuthLocalDatasource>(
      () => _i10.AuthLocalDatasource(db: get<_i8.HiveInterface>()));
  gh.lazySingleton<_i11.IAuthRemoteDataSource>(
      () => _i12.AuthRemoteDataSource(get<_i4.Dio>()));
  gh.factory<_i13.IBibleChapterLocalDatasource>(
      () => _i14.BibleChapterLocalDatasource(db: get<_i8.HiveInterface>()));
  gh.lazySingleton<_i15.IBibleChapterRemoteDataSource>(
      () => _i16.BibleChapterRemoteDataSource(get<_i4.Dio>()));
  gh.lazySingleton<_i17.IChatRemoteDataSource>(() => _i18.ChatRemoteDataSource(
      get<_i4.Dio>(), get<_i9.IAuthLocalDatasource>()));
  gh.lazySingleton<_i19.IChurchTodayRemoteDataSource>(() =>
      _i20.ChurchTodayRemoteDataSource(
          get<_i4.Dio>(), get<_i9.IAuthLocalDatasource>()));
  gh.lazySingleton<_i21.IFacebookLiveRemoteDataSource>(() =>
      _i22.FacebookLiveRemoteDataSource(
          get<_i4.Dio>(), get<_i9.IAuthLocalDatasource>()));
  gh.lazySingleton<_i23.IGalleryRemoteDataSource>(() =>
      _i24.GalleryRemoteDataSource(
          get<_i4.Dio>(), get<_i9.IAuthLocalDatasource>()));
  gh.lazySingleton<_i25.IHomeRemoteDataSource>(() => _i26.HomeRemoteDataSource(
      get<_i4.Dio>(), get<_i9.IAuthLocalDatasource>()));
  gh.lazySingleton<_i27.INetworkInfo>(
      () => _i28.NetworkInfo(get<_i3.DataConnectionChecker>()));
  gh.lazySingleton<_i29.INewsletterRemoteDataSource>(() =>
      _i30.NewsletterRemoteDataSource(
          get<_i4.Dio>(), get<_i9.IAuthLocalDatasource>()));
  gh.lazySingleton<_i31.INewsletterRepository>(() => _i32.NewsletterRepository(
      newsletterRemoteDataSource: get<_i29.INewsletterRemoteDataSource>(),
      networkInfo: get<_i27.INetworkInfo>()));
  gh.lazySingleton<_i33.INonPayEventRemoteDataSource>(() =>
      _i34.NonPayEventRemoteDataSource(
          get<_i4.Dio>(), get<_i9.IAuthLocalDatasource>()));
  gh.lazySingleton<_i35.INonPayEventRepository>(() =>
      _i36.NonPayEventRepository(
          nonPayEventRemoteDataSource: get<_i33.INonPayEventRemoteDataSource>(),
          networkInfo: get<_i27.INetworkInfo>()));
  gh.lazySingleton<_i37.IOfferingRemoteDataSource>(() =>
      _i38.OfferingRemoteDataSource(
          get<_i4.Dio>(), get<_i9.IAuthLocalDatasource>()));
  gh.lazySingleton<_i39.IOfferingRepository>(() => _i40.OfferingRepository(
      offeringRemoteDataSource: get<_i37.IOfferingRemoteDataSource>(),
      networkInfo: get<_i27.INetworkInfo>()));
  gh.lazySingleton<_i41.IPodcastRemoteDataSource>(() =>
      _i42.PodcastRemoteDataSource(
          get<_i4.Dio>(), get<_i9.IAuthLocalDatasource>()));
  gh.lazySingleton<_i43.IPodcastRepository>(() => _i44.PodcastRepository(
      podcastRemoteDataSource: get<_i41.IPodcastRemoteDataSource>(),
      networkInfo: get<_i27.INetworkInfo>()));
  gh.lazySingleton<_i45.IPollRemoteDataSource>(() => _i46.PollRemoteDataSource(
      get<_i4.Dio>(), get<_i9.IAuthLocalDatasource>()));
  gh.lazySingleton<_i47.IPollRepository>(() => _i48.PollRepository(
      pollRemoteDataSource: get<_i45.IPollRemoteDataSource>(),
      networkInfo: get<_i27.INetworkInfo>()));
  gh.lazySingleton<_i49.IProfileRemoteDataSource>(
      () => _i50.ProfileRemoteDataSource(get<_i4.Dio>()));
  gh.lazySingleton<_i51.IProfileRepository>(() => _i52.ProfileRepository(
      profileRemoteDataSource: get<_i49.IProfileRemoteDataSource>(),
      networkInfo: get<_i27.INetworkInfo>(),
      db: get<_i9.IAuthLocalDatasource>()));
  gh.lazySingleton<_i53.IUpcomingActivitiesRemoteDataSource>(() =>
      _i54.UpcomingActivitiesRemoteDataSource(
          get<_i4.Dio>(), get<_i9.IAuthLocalDatasource>()));
  gh.lazySingleton<_i55.IUpcomingActivitiesRepository>(() =>
      _i56.UpcomingActivityRepository(
          upcomingActivitiesRemoteDataSource:
              get<_i53.IUpcomingActivitiesRemoteDataSource>(),
          networkInfo: get<_i27.INetworkInfo>()));
  gh.lazySingleton<_i57.IYoutubeLinkRemoteDataSource>(() =>
      _i58.YoutubeLinkRemoteDataSource(
          get<_i4.Dio>(), get<_i9.IAuthLocalDatasource>()));
  gh.lazySingleton<_i59.IYoutubeLinkRepository>(() =>
      _i60.YoutubeLinkRepository(
          youtubeLinkRemoteDataSource: get<_i57.IYoutubeLinkRemoteDataSource>(),
          networkInfo: get<_i27.INetworkInfo>()));
  gh.factory<_i61.NewslettersBloc>(
      () => _i61.NewslettersBloc(get<_i31.INewsletterRepository>()));
  gh.factory<_i62.NonPayEventBloc>(
      () => _i62.NonPayEventBloc(get<_i35.INonPayEventRepository>()));
  gh.factory<_i63.NonPayEventsActionsBloc>(
      () => _i63.NonPayEventsActionsBloc(get<_i35.INonPayEventRepository>()));
  gh.factory<_i64.OfferingBloc>(
      () => _i64.OfferingBloc(get<_i39.IOfferingRepository>()));
  gh.factory<_i65.PodcastActionsBloc>(
      () => _i65.PodcastActionsBloc(get<_i43.IPodcastRepository>()));
  gh.factory<_i66.PodcastBloc>(
      () => _i66.PodcastBloc(get<_i43.IPodcastRepository>()));
  gh.factory<_i67.PollActionsBloc>(
      () => _i67.PollActionsBloc(get<_i47.IPollRepository>()));
  gh.factory<_i68.PollsBloc>(() => _i68.PollsBloc(get<_i47.IPollRepository>()));
  gh.factory<_i69.UpcomingActivitiesBloc>(() =>
      _i69.UpcomingActivitiesBloc(get<_i55.IUpcomingActivitiesRepository>()));
  gh.factory<_i70.UpdatePasswordBloc>(
      () => _i70.UpdatePasswordBloc(get<_i51.IProfileRepository>()));
  gh.factory<_i71.UpdateProfileBloc>(
      () => _i71.UpdateProfileBloc(get<_i51.IProfileRepository>()));
  gh.factory<_i72.YoutubeLinksBloc>(
      () => _i72.YoutubeLinksBloc(get<_i59.IYoutubeLinkRepository>()));
  gh.lazySingleton<_i73.IAnnouncementRemoteDataSource>(() =>
      _i74.AnnouncementRemoteDataSource(
          get<_i4.Dio>(), get<_i9.IAuthLocalDatasource>()));
  gh.lazySingleton<_i75.IAnnouncementRepository>(() =>
      _i76.AnnouncementsRepository(
          announcementRemoteDataSource:
              get<_i73.IAnnouncementRemoteDataSource>(),
          networkInfo: get<_i27.INetworkInfo>()));
  gh.lazySingleton<_i77.IAuthRepository>(() => _i78.AuthRepository(
      authRemoteDataSource: get<_i11.IAuthRemoteDataSource>(),
      networkInfo: get<_i27.INetworkInfo>(),
      db: get<_i9.IAuthLocalDatasource>(),
      facebookLogin: get<_i5.FacebookLogin>(),
      googleLogin: get<_i7.GoogleSignIn>(),
      firebaseMessaging: get<_i6.FirebaseMessaging>()));
  gh.lazySingleton<_i79.IBibleChapterRepository>(() =>
      _i80.BibleChapterRepository(
          bibleChapterRemoteDataSource:
              get<_i15.IBibleChapterRemoteDataSource>(),
          bibleChapterLocalDataSource: get<_i13.IBibleChapterLocalDatasource>(),
          networkInfo: get<_i27.INetworkInfo>()));
  gh.lazySingleton<_i81.IChatRepository>(() => _i82.ChatRepository(
      chatRemoteDataSource: get<_i17.IChatRemoteDataSource>(),
      networkInfo: get<_i27.INetworkInfo>()));
  gh.lazySingleton<_i83.IChurchTodayRepository>(() =>
      _i84.ChurchTodayRepository(
          churchTodayRemoteDataSource: get<_i19.IChurchTodayRemoteDataSource>(),
          networkInfo: get<_i27.INetworkInfo>()));
  gh.lazySingleton<_i85.IFacebookLiveRepository>(() =>
      _i86.FacebookLiveRepository(
          facebookLiveRemoteDataSource:
              get<_i21.IFacebookLiveRemoteDataSource>(),
          networkInfo: get<_i27.INetworkInfo>()));
  gh.lazySingleton<_i87.IGalleryRepository>(() => _i88.GalleryRepository(
      galleryRemoteDataSource: get<_i23.IGalleryRemoteDataSource>(),
      networkInfo: get<_i27.INetworkInfo>()));
  gh.lazySingleton<_i89.IHomeRepository>(() => _i90.HomeRepository(
      homeRemoteDataSource: get<_i25.IHomeRemoteDataSource>(),
      networkInfo: get<_i27.INetworkInfo>()));
  gh.factory<_i91.RegistrationBloc>(
      () => _i91.RegistrationBloc(get<_i77.IAuthRepository>()));
  gh.factory<_i92.SignInBloc>(
      () => _i92.SignInBloc(get<_i77.IAuthRepository>()));
  gh.factory<_i93.ValidateSubdomainBloc>(
      () => _i93.ValidateSubdomainBloc(get<_i77.IAuthRepository>()));
  gh.factory<_i94.AnnouncementsBloc>(
      () => _i94.AnnouncementsBloc(get<_i75.IAnnouncementRepository>()));
  gh.factory<_i95.AuthBloc>(() => _i95.AuthBloc(get<_i77.IAuthRepository>()));
  gh.factory<_i96.BibleChapterBloc>(
      () => _i96.BibleChapterBloc(get<_i79.IBibleChapterRepository>()));
  gh.factory<_i97.ChatActionsBloc>(
      () => _i97.ChatActionsBloc(get<_i81.IChatRepository>()));
  gh.factory<_i98.ChatBloc>(() => _i98.ChatBloc(get<_i81.IChatRepository>()));
  gh.factory<_i99.ChatCategoryBloc>(
      () => _i99.ChatCategoryBloc(get<_i81.IChatRepository>()));
  gh.factory<_i100.ChurchTodayBloc>(
      () => _i100.ChurchTodayBloc(get<_i83.IChurchTodayRepository>()));
  gh.factory<_i101.CounsellorChateeBloc>(
      () => _i101.CounsellorChateeBloc(get<_i81.IChatRepository>()));
  gh.factory<_i102.FacebookLiveBloc>(
      () => _i102.FacebookLiveBloc(get<_i85.IFacebookLiveRepository>()));
  gh.factory<_i103.ForgotPasswordBloc>(
      () => _i103.ForgotPasswordBloc(get<_i77.IAuthRepository>()));
  gh.factory<_i104.GalleryBloc>(
      () => _i104.GalleryBloc(get<_i87.IGalleryRepository>()));
  gh.factory<_i105.HomeBloc>(() => _i105.HomeBloc(get<_i89.IHomeRepository>()));
  return get;
}

class _$InjectableModules extends _i106.InjectableModules {}
