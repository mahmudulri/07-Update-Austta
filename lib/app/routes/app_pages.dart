import 'package:aust_textile_alumni/app/modules/live_stream/live_stream_view.dart';
import 'package:aust_textile_alumni/app/modules/notification/views/notification_details.dart';
import 'package:aust_textile_alumni/app/modules/notification/views/notification_view.dart';
import 'package:aust_textile_alumni/app/modules/transaction/my_transaction.dart';
import 'package:aust_textile_alumni/app/modules/user_profile/views/user_profile.dart';
import 'package:aust_textile_alumni/draft.dart';
import 'package:get/get.dart';

import 'package:aust_textile_alumni/app/modules/alumni_book/bindings/alumni_book_binding.dart';
import 'package:aust_textile_alumni/app/modules/alumni_book/views/alumni_book_view.dart';
import 'package:aust_textile_alumni/app/modules/base/bindings/base_binding.dart';
import 'package:aust_textile_alumni/app/modules/base/views/base_view.dart';
import 'package:aust_textile_alumni/app/modules/details_screen/bindings/details_screen_binding.dart';
import 'package:aust_textile_alumni/app/modules/details_screen/views/upcoming_details_view.dart';
import 'package:aust_textile_alumni/app/modules/event/bindings/event_binding.dart';
import 'package:aust_textile_alumni/app/modules/event/views/event_view.dart';
import 'package:aust_textile_alumni/app/modules/home/bindings/home_binding.dart';
import 'package:aust_textile_alumni/app/modules/home/views/home_view.dart';
import 'package:aust_textile_alumni/app/modules/job/bindings/job_binding.dart';
import 'package:aust_textile_alumni/app/modules/job/views/job_view.dart';
import 'package:aust_textile_alumni/app/modules/log_in/bindings/log_in_binding.dart';
import 'package:aust_textile_alumni/app/modules/log_in/views/log_in_view.dart';
import 'package:aust_textile_alumni/app/modules/message/bindings/message_binding.dart';
import 'package:aust_textile_alumni/app/modules/message/views/message_view.dart';
import 'package:aust_textile_alumni/app/modules/otp/bindings/otp_binding.dart';
import 'package:aust_textile_alumni/app/modules/otp/views/otp_view.dart';
import 'package:aust_textile_alumni/app/modules/register/bindings/register_binding.dart';
import 'package:aust_textile_alumni/app/modules/register/views/register_view.dart';
import 'package:aust_textile_alumni/app/modules/splash_screen/bindings/splash_screen_binding.dart';
import 'package:aust_textile_alumni/app/modules/splash_screen/views/splash_screen_view.dart';
import 'package:aust_textile_alumni/app/modules/user_post/bindings/user_post_binding.dart';
import 'package:aust_textile_alumni/app/modules/user_post/views/user_post_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.MY_TRANSACTIONS;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOG_IN,
      page: () => LogInView(),
      binding: LogInBinding(),
    ),
    GetPage(
      name: _Paths.OTP,
      page: () => OtpView(),
      binding: OtpBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.USER_POST,
      page: () => UserPostView(),
      binding: UserPostBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH_SCREEN,
      page: () => SplashScreenView(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: _Paths.ALUMNI_BOOK,
      page: () => AlumniBookView(),
      binding: AlumniBookBinding(),
    ),
    GetPage(
      name: _Paths.BASE,
      page: () => BaseView(),
      binding: BaseBinding(),
    ),
    GetPage(
      name: _Paths.DETAILS_SCREEN,
      page: () => UpcomingDetailsView(),
      binding: DetailsScreenBinding(),
    ),
    GetPage(
      name: _Paths.MESSAGE,
      page: () => MessageView(),
      binding: MessageBinding(),
    ),
    GetPage(
      name: _Paths.JOB,
      page: () => JobView(),
      binding: JobBinding(),
    ),
    GetPage(
      name: _Paths.EVENT,
      page: () => EventView(),
      binding: EventBinding(),
    ),
    GetPage(
      name: _Paths.LIVESTREAM,
      page: () => LiveStreamView(),
    ),
    GetPage(
      name: _Paths.DRAFTPAGE,
      page: () => Draftpage(),
    ),
    GetPage(
      name: _Paths.USER_PROFILE,
      page: () => UserProfile(),
    ),
    GetPage(
      name: _Paths.NOTIFICATION,
      page: () => NotificatonView(),
    ),
    GetPage(
      name: _Paths.NOTIFICATION_DETAILS,
      page: () => NotificatonDetails(),
    ),
    GetPage(
      name: _Paths.MY_TRANSACTIONS,
      page: () => MyTransaction(),
    ),
  ];
}
