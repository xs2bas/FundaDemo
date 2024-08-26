import 'package:fundademo/modules/details/details_controller.dart';
import 'package:get/get.dart';

class DetailsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => DetailsController(),
    );
  }
}
