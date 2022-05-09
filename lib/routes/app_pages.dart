import 'package:autoformvalidation/pages/login/login_binding.dart';
import 'package:autoformvalidation/pages/login/login_page.dart';
import 'package:get/get.dart';

part 'app_routers.dart';

class AppPages {
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => LoginPage(),
      binding: LoginBinding(),
    ),
  ];
}