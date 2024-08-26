import 'package:get/get.dart';
import 'package:get_it/get_it.dart';

import 'package:fundademo/models/app_config.dart';
import 'package:fundademo/models/detail_data.dart';
import 'package:fundademo/services/http_service.dart';

class DetailsController extends GetxController {
  static DetailsController get to => Get.find();
  DetailsController();

  //
  final GetIt getIt = GetIt.instance;
  final String objectId = 'c1308978-f45c-4cc6-8d1a-b8f8b956a3e2'; // Hardcoded for now

  // Observables
  RxBool isLoading = true.obs;
  Rx<DetailData> detailData = DetailData().obs;

  @override
  void onInit() async {
    super.onInit();

    await fetchDetails();
  }

  /// Start fetching detail data from the server.
  fetchDetails() async {
    isLoading.value = true;
    // Get details data
    AppConfig config = getIt.get<AppConfig>();
    try {
      Map<String, dynamic>? detailDataResponse = await HTTPService().get(config.DETAIL_SUFFIX! + objectId);
      if (detailDataResponse != null) {
        detailData.value = DetailData.fromJson(detailDataResponse);
      } else {}
    } catch (e) {}

    isLoading.value = false;
  }
}
