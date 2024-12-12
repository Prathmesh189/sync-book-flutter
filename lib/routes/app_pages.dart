
import 'package:get/get.dart';

import '../binding/auth_binding.dart';
import '../screen/auth/login_screen.dart';
import 'routes.dart';

class AppPages {
  AppPages._();

  static const String INITIAL_ROUTE = Routes.LOGIN_SCREEN;

  static final routes = [

    GetPage(
      name: Routes.LOGIN_SCREEN,
      page: () => const LoginScreen(),
      binding: AuthBinding(),
    ),

  ];
}
