import 'package:flutter/material.dart';
import 'package:fundademo/modules/splash/splash_controller.dart';
import 'package:fundademo/utils/app_colors.dart';
import 'package:fundademo/utils/ui_constants.dart';

import 'package:get/get.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    final SplashController controller = Get.put(SplashController());

    return Container(
        color: AppColors.yellowOrange,
        // Show image from assets folder
        child: Center(
          child: Image.asset('assets/images/fundalogo.png'),
        ));
  }
}
