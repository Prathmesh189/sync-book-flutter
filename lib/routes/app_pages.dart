
import 'package:gargisbeautyparlor/binding/dashboard_binding.dart';
import 'package:gargisbeautyparlor/screen/auth/register_name_screen.dart';
import 'package:gargisbeautyparlor/screen/auth/register_screen.dart';
import 'package:gargisbeautyparlor/screen/auth/otp_verification_screen.dart';
import 'package:get/get.dart';

import '../binding/auth_binding.dart';
import '../screen/auth/login_screen.dart';
import '../screen/dashbord/home_screen.dart';
import 'routes.dart';

class AppPages {
  AppPages._();

  static const String INITIAL_ROUTE = Routes.REGISTER_NAME_SCREEN;

  static final routes = [

    GetPage(
      name: Routes.LOGIN_SCREEN,
      page: () => const LoginScreen(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: Routes.REGISTER_SCREEN,
      page: () => const RegisterScreen(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: Routes.OTP_VERIFICATION_SCREEN,
      page: () => const OtpVerificationScreen(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: Routes.REGISTER_NAME_SCREEN,
      page: () => const RegisterNameScreen(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: Routes.HOME_SCREEN,
      page: () => const HomeScreen(),
      binding: DashboardBinding(),
    ),

  ];
}
