import 'package:autoformvalidation/pages/home/home_binding.dart';
import 'package:autoformvalidation/pages/home/home_page.dart';
import 'package:get/get.dart';

part 'app_routers.dart';

class AppPages {
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
  ];
}