// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i31;

import '../../domain/chats/chat_message.dart' as _i34;
import '../../domain/chats/counsellor.dart' as _i33;
import '../../domain/podcast/podcast.dart' as _i32;
import '../pages/announcements/announcements_page.dart' as _i16;
import '../pages/auth/forgot_password/forgot_password_page.dart' as _i8;
import '../pages/auth/register/register_page.dart' as _i6;
import '../pages/auth/sign_in/sign_in_page.dart' as _i4;
import '../pages/bible/bible_page.dart' as _i21;
import '../pages/bible/bible_verse_page.dart' as _i23;
import '../pages/bible/book_chapter_page.dart' as _i22;
import '../pages/chats/chat_categories_page.dart' as _i26;
import '../pages/chats/chatMsg_page.dart' as _i28;
import '../pages/chats/counsellor_chatee_page.dart' as _i29;
import '../pages/chats/counsellor_list_page.dart' as _i27;
import '../pages/church_today/church_today_page.dart' as _i18;
import '../pages/gallery/gallery_page.dart' as _i11;
import '../pages/home/home_page.dart' as _i5;
import '../pages/landing/landing_page.dart' as _i3;
import '../pages/landing/subdomain_page.dart' as _i30;
import '../pages/newsletters/newsletters_page.dart' as _i15;
import '../pages/non_pay_events/non_pay_event_page.dart' as _i20;
import '../pages/non_pay_events/payment_page.dart' as _i25;
import '../pages/offering/offering_page.dart' as _i24;
import '../pages/onboarding/onboarding_page.dart' as _i7;
import '../pages/podcast/podcast_detail_page.dart' as _i13;
import '../pages/podcast/podcast_page.dart' as _i12;
import '../pages/polls/polls_page.dart' as _i19;
import '../pages/profile/update_profile_page.dart' as _i9;
import '../pages/splash/splash_page.dart' as _i2;
import '../pages/upcoming_activities/upcoming_activities_page.dart' as _i14;
import '../pages/update_password/update_profile_page.dart' as _i10;
import '../pages/youtube_links/youtube_links_page.dart' as _i17;

class AppRouter extends _i1.RootStackRouter {
  AppRouter();

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    SplashRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: const _i2.SplashPage());
    },
    LandingRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: const _i3.LandingPage());
    },
    SignInRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: const _i4.SignInPage());
    },
    HomeRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i5.HomePage());
    },
    RegisterRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i6.RegisterPage());
    },
    OnboardingRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i7.OnboardingPage());
    },
    ForgotPasswordRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i8.ForgotPasswordPage());
    },
    UpdateProfileRoute.name: (entry) {
      return _i1.MaterialPageX(
          entry: entry, child: const _i9.UpdateProfilePage());
    },
    UpdatePasswordRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i10.UpdatePasswordPage());
    },
    GalleryRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: const _i11.GalleryPage());
    },
    PodcastRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: const _i12.PodcastPage());
    },
    PodcastDetailRoute.name: (entry) {
      var args = entry.routeData.argsAs<PodcastDetailRouteArgs>();
      return _i1.MaterialPageX(
          entry: entry,
          child: _i13.PodcastDetailPage(key: args.key, podcast: args.podcast));
    },
    UpcomingActivitiesRoute.name: (entry) {
      return _i1.MaterialPageX(
          entry: entry, child: const _i14.UpcomingActivitiesPage());
    },
    NewslettersRoute.name: (entry) {
      return _i1.MaterialPageX(
          entry: entry, child: const _i15.NewslettersPage());
    },
    AnnouncementsRoute.name: (entry) {
      return _i1.MaterialPageX(
          entry: entry, child: const _i16.AnnouncementsPage());
    },
    YoutubeLinksRoute.name: (entry) {
      return _i1.MaterialPageX(
          entry: entry, child: const _i17.YoutubeLinksPage());
    },
    ChurchTodayRoute.name: (entry) {
      return _i1.MaterialPageX(
          entry: entry, child: const _i18.ChurchTodayPage());
    },
    PollsRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: const _i19.PollsPage());
    },
    NonPayEventsRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i20.NonPayEventsPage());
    },
    BibleRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i21.BiblePage());
    },
    BookChapterRoute.name: (entry) {
      var args = entry.routeData.argsAs<BookChapterRouteArgs>();
      return _i1.MaterialPageX(
          entry: entry,
          child: _i22.BookChapterPage(key: args.key, book: args.book));
    },
    BibleVerseRoute.name: (entry) {
      var args = entry.routeData.argsAs<BibleVerseRouteArgs>();
      return _i1.MaterialPageX(
          entry: entry,
          child: _i23.BibleVersePage(
              key: args.key, book: args.book, chapter: args.chapter));
    },
    OfferingRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i24.OfferingPage());
    },
    PaymentRoute.name: (entry) {
      var args = entry.routeData.argsAs<PaymentRouteArgs>();
      return _i1.MaterialPageX(
          entry: entry,
          child: _i25.PaymentPage(
              key: args.key,
              scaffoldstate: args.scaffoldstate,
              id: args.id,
              amount: args.amount));
    },
    ChatCategoriesRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i26.ChatCategoriesPage());
    },
    CounsellorListRoute.name: (entry) {
      var args = entry.routeData.argsAs<CounsellorListRouteArgs>();
      return _i1.MaterialPageX(
          entry: entry,
          child: _i27.CounsellorListPage(
              key: args.key, counsellors: args.counsellors));
    },
    ChatMessageRoute.name: (entry) {
      var args = entry.routeData.argsAs<ChatMessageRouteArgs>();
      return _i1.MaterialPageX(
          entry: entry,
          child: _i28.ChatMessagePage(
              key: args.key,
              msgs: args.msgs,
              senderId: args.senderId,
              isCounsellor: args.isCounsellor,
              conversationId: args.conversationId,
              counsellorId: args.counsellorId,
              counsellorName: args.counsellorName));
    },
    CounsellorChateeRoute.name: (entry) {
      return _i1.MaterialPageX(
          entry: entry, child: _i29.CounsellorChateePage());
    },
    SubdomainRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i30.SubdomainPage());
    }
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(SplashRoute.name, path: '/'),
        _i1.RouteConfig(LandingRoute.name, path: '/landing-page'),
        _i1.RouteConfig(SignInRoute.name, path: '/sign-in-page'),
        _i1.RouteConfig(HomeRoute.name, path: '/home-page'),
        _i1.RouteConfig(RegisterRoute.name, path: '/register-page'),
        _i1.RouteConfig(OnboardingRoute.name, path: '/onboarding-page'),
        _i1.RouteConfig(ForgotPasswordRoute.name,
            path: '/forgot-password-page'),
        _i1.RouteConfig(UpdateProfileRoute.name, path: '/update-profile-page'),
        _i1.RouteConfig(UpdatePasswordRoute.name,
            path: '/update-password-page'),
        _i1.RouteConfig(GalleryRoute.name, path: '/gallery-page'),
        _i1.RouteConfig(PodcastRoute.name, path: '/podcast-page'),
        _i1.RouteConfig(PodcastDetailRoute.name, path: '/podcast-detail-page'),
        _i1.RouteConfig(UpcomingActivitiesRoute.name,
            path: '/upcoming-activities-page'),
        _i1.RouteConfig(NewslettersRoute.name, path: '/newsletters-page'),
        _i1.RouteConfig(AnnouncementsRoute.name, path: '/announcements-page'),
        _i1.RouteConfig(YoutubeLinksRoute.name, path: '/youtube-links-page'),
        _i1.RouteConfig(ChurchTodayRoute.name, path: '/church-today-page'),
        _i1.RouteConfig(PollsRoute.name, path: '/polls-page'),
        _i1.RouteConfig(NonPayEventsRoute.name, path: '/non-pay-events-page'),
        _i1.RouteConfig(BibleRoute.name, path: '/bible-page'),
        _i1.RouteConfig(BookChapterRoute.name, path: '/book-chapter-page'),
        _i1.RouteConfig(BibleVerseRoute.name, path: '/bible-verse-page'),
        _i1.RouteConfig(OfferingRoute.name, path: '/offering-page'),
        _i1.RouteConfig(PaymentRoute.name, path: '/payment-page'),
        _i1.RouteConfig(ChatCategoriesRoute.name,
            path: '/chat-categories-page'),
        _i1.RouteConfig(CounsellorListRoute.name,
            path: '/counsellor-list-page'),
        _i1.RouteConfig(ChatMessageRoute.name, path: '/chat-message-page'),
        _i1.RouteConfig(CounsellorChateeRoute.name,
            path: '/counsellor-chatee-page'),
        _i1.RouteConfig(SubdomainRoute.name, path: '/subdomain-page')
      ];
}

class SplashRoute extends _i1.PageRouteInfo {
  const SplashRoute() : super(name, path: '/');

  static const String name = 'SplashRoute';
}

class LandingRoute extends _i1.PageRouteInfo {
  const LandingRoute() : super(name, path: '/landing-page');

  static const String name = 'LandingRoute';
}

class SignInRoute extends _i1.PageRouteInfo {
  const SignInRoute() : super(name, path: '/sign-in-page');

  static const String name = 'SignInRoute';
}

class HomeRoute extends _i1.PageRouteInfo {
  const HomeRoute() : super(name, path: '/home-page');

  static const String name = 'HomeRoute';
}

class RegisterRoute extends _i1.PageRouteInfo {
  const RegisterRoute() : super(name, path: '/register-page');

  static const String name = 'RegisterRoute';
}

class OnboardingRoute extends _i1.PageRouteInfo {
  const OnboardingRoute() : super(name, path: '/onboarding-page');

  static const String name = 'OnboardingRoute';
}

class ForgotPasswordRoute extends _i1.PageRouteInfo {
  const ForgotPasswordRoute() : super(name, path: '/forgot-password-page');

  static const String name = 'ForgotPasswordRoute';
}

class UpdateProfileRoute extends _i1.PageRouteInfo {
  const UpdateProfileRoute() : super(name, path: '/update-profile-page');

  static const String name = 'UpdateProfileRoute';
}

class UpdatePasswordRoute extends _i1.PageRouteInfo {
  const UpdatePasswordRoute() : super(name, path: '/update-password-page');

  static const String name = 'UpdatePasswordRoute';
}

class GalleryRoute extends _i1.PageRouteInfo {
  const GalleryRoute() : super(name, path: '/gallery-page');

  static const String name = 'GalleryRoute';
}

class PodcastRoute extends _i1.PageRouteInfo {
  const PodcastRoute() : super(name, path: '/podcast-page');

  static const String name = 'PodcastRoute';
}

class PodcastDetailRoute extends _i1.PageRouteInfo<PodcastDetailRouteArgs> {
  PodcastDetailRoute({_i31.Key? key, required _i32.Podcast podcast})
      : super(name,
            path: '/podcast-detail-page',
            args: PodcastDetailRouteArgs(key: key, podcast: podcast));

  static const String name = 'PodcastDetailRoute';
}

class PodcastDetailRouteArgs {
  const PodcastDetailRouteArgs({this.key, required this.podcast});

  final _i31.Key? key;

  final _i32.Podcast podcast;
}

class UpcomingActivitiesRoute extends _i1.PageRouteInfo {
  const UpcomingActivitiesRoute()
      : super(name, path: '/upcoming-activities-page');

  static const String name = 'UpcomingActivitiesRoute';
}

class NewslettersRoute extends _i1.PageRouteInfo {
  const NewslettersRoute() : super(name, path: '/newsletters-page');

  static const String name = 'NewslettersRoute';
}

class AnnouncementsRoute extends _i1.PageRouteInfo {
  const AnnouncementsRoute() : super(name, path: '/announcements-page');

  static const String name = 'AnnouncementsRoute';
}

class YoutubeLinksRoute extends _i1.PageRouteInfo {
  const YoutubeLinksRoute() : super(name, path: '/youtube-links-page');

  static const String name = 'YoutubeLinksRoute';
}

class ChurchTodayRoute extends _i1.PageRouteInfo {
  const ChurchTodayRoute() : super(name, path: '/church-today-page');

  static const String name = 'ChurchTodayRoute';
}

class PollsRoute extends _i1.PageRouteInfo {
  const PollsRoute() : super(name, path: '/polls-page');

  static const String name = 'PollsRoute';
}

class NonPayEventsRoute extends _i1.PageRouteInfo {
  const NonPayEventsRoute() : super(name, path: '/non-pay-events-page');

  static const String name = 'NonPayEventsRoute';
}

class BibleRoute extends _i1.PageRouteInfo {
  const BibleRoute() : super(name, path: '/bible-page');

  static const String name = 'BibleRoute';
}

class BookChapterRoute extends _i1.PageRouteInfo<BookChapterRouteArgs> {
  BookChapterRoute({_i31.Key? key, required MapEntry<String, int> book})
      : super(name,
            path: '/book-chapter-page',
            args: BookChapterRouteArgs(key: key, book: book));

  static const String name = 'BookChapterRoute';
}

class BookChapterRouteArgs {
  const BookChapterRouteArgs({this.key, required this.book});

  final _i31.Key? key;

  final MapEntry<String, int> book;
}

class BibleVerseRoute extends _i1.PageRouteInfo<BibleVerseRouteArgs> {
  BibleVerseRoute(
      {_i31.Key? key,
      required MapEntry<String, int> book,
      required int chapter})
      : super(name,
            path: '/bible-verse-page',
            args: BibleVerseRouteArgs(key: key, book: book, chapter: chapter));

  static const String name = 'BibleVerseRoute';
}

class BibleVerseRouteArgs {
  const BibleVerseRouteArgs(
      {this.key, required this.book, required this.chapter});

  final _i31.Key? key;

  final MapEntry<String, int> book;

  final int chapter;
}

class OfferingRoute extends _i1.PageRouteInfo {
  const OfferingRoute() : super(name, path: '/offering-page');

  static const String name = 'OfferingRoute';
}

class PaymentRoute extends _i1.PageRouteInfo<PaymentRouteArgs> {
  PaymentRoute(
      {_i31.Key? key,
      required _i31.GlobalKey<_i31.ScaffoldState> scaffoldstate,
      required int id,
      required int amount})
      : super(name,
            path: '/payment-page',
            args: PaymentRouteArgs(
                key: key,
                scaffoldstate: scaffoldstate,
                id: id,
                amount: amount));

  static const String name = 'PaymentRoute';
}

class PaymentRouteArgs {
  const PaymentRouteArgs(
      {this.key,
      required this.scaffoldstate,
      required this.id,
      required this.amount});

  final _i31.Key? key;

  final _i31.GlobalKey<_i31.ScaffoldState> scaffoldstate;

  final int id;

  final int amount;
}

class ChatCategoriesRoute extends _i1.PageRouteInfo {
  const ChatCategoriesRoute() : super(name, path: '/chat-categories-page');

  static const String name = 'ChatCategoriesRoute';
}

class CounsellorListRoute extends _i1.PageRouteInfo<CounsellorListRouteArgs> {
  CounsellorListRoute(
      {_i31.Key? key, required List<_i33.Counsellor> counsellors})
      : super(name,
            path: '/counsellor-list-page',
            args: CounsellorListRouteArgs(key: key, counsellors: counsellors));

  static const String name = 'CounsellorListRoute';
}

class CounsellorListRouteArgs {
  const CounsellorListRouteArgs({this.key, required this.counsellors});

  final _i31.Key? key;

  final List<_i33.Counsellor> counsellors;
}

class ChatMessageRoute extends _i1.PageRouteInfo<ChatMessageRouteArgs> {
  ChatMessageRoute(
      {_i31.Key? key,
      required List<_i34.ChatMessage> msgs,
      int? senderId,
      bool? isCounsellor,
      required int conversationId,
      required int counsellorId,
      required String counsellorName})
      : super(name,
            path: '/chat-message-page',
            args: ChatMessageRouteArgs(
                key: key,
                msgs: msgs,
                senderId: senderId,
                isCounsellor: isCounsellor,
                conversationId: conversationId,
                counsellorId: counsellorId,
                counsellorName: counsellorName));

  static const String name = 'ChatMessageRoute';
}

class ChatMessageRouteArgs {
  const ChatMessageRouteArgs(
      {this.key,
      required this.msgs,
      this.senderId,
      this.isCounsellor,
      required this.conversationId,
      required this.counsellorId,
      required this.counsellorName});

  final _i31.Key? key;

  final List<_i34.ChatMessage> msgs;

  final int? senderId;

  final bool? isCounsellor;

  final int conversationId;

  final int counsellorId;

  final String counsellorName;
}

class CounsellorChateeRoute extends _i1.PageRouteInfo {
  const CounsellorChateeRoute() : super(name, path: '/counsellor-chatee-page');

  static const String name = 'CounsellorChateeRoute';
}

class SubdomainRoute extends _i1.PageRouteInfo {
  const SubdomainRoute() : super(name, path: '/subdomain-page');

  static const String name = 'SubdomainRoute';
}
