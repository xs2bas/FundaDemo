import 'package:get/get.dart';

import 'package:fundademo/modules/details/details_binding.dart';
import 'package:fundademo/modules/details/details_view.dart';
import 'package:fundademo/modules/splash/splash_binding.dart';
import 'package:fundademo/modules/splash/splash_view.dart';
import 'package:fundademo/routes/routes.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: Routes.DETAILSPAGE,
      page: () => DetailsView(),
      binding: DetailsBinding(),
      transitionDuration: 400.milliseconds,
    ),
    GetPage(
      name: Routes.SPLASH,
      page: () => SplashView(),
      binding: SplashBinding(),
      transitionDuration: 300.milliseconds,
    ),
  ];
}
