import 'dart:convert';

import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:get_it/get_it.dart';

import 'package:fundademo/models/app_config.dart';
import 'package:fundademo/routes/routes.dart';
import 'package:fundademo/utils/helper.dart';

class SplashController extends GetxController {
  static SplashController get to => Get.find();
  SplashController();

  /// Initializes the controller by setting up the application and navigating to the details page after a short delay.
  @override
  void onInit() {
    _setup();
    Future.delayed(const Duration(seconds: 2), () {
      Get.toNamed(Routes.DETAILSPAGE);
    });
    super.onInit();
  }

  /// Sets up the application by loading the configuration file and registering
  /// the AppConfig and Helper instances as singletons.
  Future<void> _setup() async {
    final getIt = GetIt.instance;

    final configFile = await rootBundle.loadString('assets/config.json');
    final configData = jsonDecode(configFile);

    getIt.registerSingleton<AppConfig>(
      AppConfig(
        BASE_API_URL: configData['BASE_API_URL'],
        DETAIL_SUFFIX: configData['DETAIL_SUFFIX'],
        API_KEY: configData['API_KEY'],
      ),
    );

    getIt.registerSingleton<Helper>(
      Helper(),
    );
  }
}
