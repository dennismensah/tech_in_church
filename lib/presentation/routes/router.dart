import 'package:auto_route/auto_route.dart';
import 'package:tech_in_church/presentation/pages/announcements/announcements_page.dart';
import 'package:tech_in_church/presentation/pages/auth/forgot_password/forgot_password_page.dart';
import 'package:tech_in_church/presentation/pages/auth/register/register_page.dart';
import 'package:tech_in_church/presentation/pages/auth/sign_in/sign_in_page.dart';
import 'package:tech_in_church/presentation/pages/bible/bible_page.dart';
import 'package:tech_in_church/presentation/pages/bible/bible_verse_page.dart';
import 'package:tech_in_church/presentation/pages/bible/book_chapter_page.dart';
import 'package:tech_in_church/presentation/pages/chats/chatMsg_page.dart';
import 'package:tech_in_church/presentation/pages/chats/chat_categories_page.dart';
import 'package:tech_in_church/presentation/pages/chats/counsellor_chatMsg_page.dart';
import 'package:tech_in_church/presentation/pages/chats/counsellor_chatee_page.dart';
import 'package:tech_in_church/presentation/pages/chats/counsellor_list_page.dart';
import 'package:tech_in_church/presentation/pages/church_today/church_today_page.dart';
import 'package:tech_in_church/presentation/pages/gallery/gallery_page.dart';
import 'package:tech_in_church/presentation/pages/home/home_page.dart';
import 'package:tech_in_church/presentation/pages/landing/landing_page.dart';
import 'package:tech_in_church/presentation/pages/landing/subdomain_page.dart';
import 'package:tech_in_church/presentation/pages/newsletters/newsletters_page.dart';
import 'package:tech_in_church/presentation/pages/non_pay_events/non_pay_event_page.dart';
import 'package:tech_in_church/presentation/pages/non_pay_events/payment_page.dart';
import 'package:tech_in_church/presentation/pages/offering/offering_page.dart';
import 'package:tech_in_church/presentation/pages/onboarding/onboarding_page.dart';
import 'package:tech_in_church/presentation/pages/podcast/podcast_detail_page.dart';
import 'package:tech_in_church/presentation/pages/podcast/podcast_page.dart';
import 'package:tech_in_church/presentation/pages/polls/polls_page.dart';
import 'package:tech_in_church/presentation/pages/profile/update_profile_page.dart';
import 'package:tech_in_church/presentation/pages/splash/splash_page.dart';
import 'package:tech_in_church/presentation/pages/upcoming_activities/upcoming_activities_page.dart';
import 'package:tech_in_church/presentation/pages/update_password/update_profile_page.dart';
import 'package:tech_in_church/presentation/pages/youtube_links/youtube_links_page.dart';

@MaterialAutoRouter(
  generateNavigationHelperExtension: true,
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    // AutoRoute(page: AEventsPage,initial: true),
    AutoRoute(page: SplashPage,initial: true),
    AutoRoute(page: LandingPage),
    AutoRoute(page: SignInPage,),
    AutoRoute(page: HomePage),
    AutoRoute(page: RegisterPage,),
    AutoRoute(page: OnboardingPage),
    AutoRoute(page: ForgotPasswordPage),
    AutoRoute(page: UpdateProfilePage),
    AutoRoute(page: UpdatePasswordPage),
    AutoRoute(page: GalleryPage),
    AutoRoute(page: PodcastPage),    
    AutoRoute(page: PodcastDetailPage),
    AutoRoute(page: UpcomingActivitiesPage),
    AutoRoute(page: NewslettersPage),
    AutoRoute(page: AnnouncementsPage),
    AutoRoute(page: YoutubeLinksPage),
    AutoRoute(page: ChurchTodayPage),
    AutoRoute(page: PollsPage),
    AutoRoute(page: NonPayEventsPage),
    AutoRoute(page: BiblePage),
    AutoRoute(page: BookChapterPage),
    AutoRoute(page: BibleVersePage),
    AutoRoute(page: OfferingPage),
    AutoRoute(page: PaymentPage),
    AutoRoute(page: ChatCategoriesPage),
    AutoRoute(page: CounsellorListPage),
    AutoRoute(page: ChatMessagePage),
    AutoRoute(page: CounsellorChateePage),
    AutoRoute(page: SubdomainPage),
  ],
)
class $AppRouter {}

