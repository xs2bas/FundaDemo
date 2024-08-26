//Packages
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'package:fundademo/models/app_config.dart';

class HTTPService {
  final Dio dio = Dio();
  final GetIt getIt = GetIt.instance;

  String? baseUrl;
  String? detailsApiExtension;
  String? apiKey;

  HTTPService() {
    AppConfig config = getIt.get<AppConfig>();
    baseUrl = config.BASE_API_URL;
    detailsApiExtension = config.DETAIL_SUFFIX;
    apiKey = config.API_KEY;
  }

  /// Performs a GET request to the specified URL with optional query parameters.
  ///
  /// The `suffix` parameter is appended to the base URL to form the full URL.
  /// The `queryParams` parameter is a map of query parameters to be added to the URL.
  ///
  /// Returns a map of response data if the request is successful and the response data is in the correct format.
  /// If the request fails or the response data is in an unexpected format, returns a map with an error message.
  Future<Map<String, dynamic>?> get(String suffix, {Map<String, dynamic>? queryParams}) async {
    try {
      String url = '$baseUrl$suffix';

      // Default query params
      Map<String, dynamic> query = {};

      // Add query params
      if (queryParams != null) query.addAll(queryParams);
      var response = await dio.get(url, queryParameters: query);

      // Ensure the response data is a Map<String, dynamic>
      if (response.data is Map<String, dynamic>) {
        return response.data as Map<String, dynamic>;
      } else {
        return {
          'error': 'Unexpected response format.',
        };
      }
    } on DioException catch (e) {
      return {
        'error': 'Unable to perform get request.',
        'errorText': e.toString(),
      };
    }
  }
}
