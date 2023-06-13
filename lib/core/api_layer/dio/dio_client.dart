import 'package:akshit_madan/core/api_layer/constants.dart';
import 'package:akshit_madan/core/api_layer/models/api.dart';
import 'package:dio/dio.dart';

import '../models/exceptions.dart/unsecured_error.dart';

abstract class DioClient extends API {
  final Dio _dio;

  DioClient({
    required String baseUrl,
    // Iterable<Interceptor>? interceptors,
    bool isAuthenticatorRequired = false,
    Duration timeout = const Duration(seconds: 20),
  }) : _dio = Dio(
          BaseOptions(
            baseUrl: baseUrl,
            receiveDataWhenStatusError: true,
            contentType: HeaderConstants.jsonContentType,
            sendTimeout: timeout,
            connectTimeout: timeout,
            receiveTimeout: timeout,
          ),
        ) {
    final url = Uri.tryParse(baseUrl);
    if (url != null && !url.isScheme("HTTPS")) {
      throw UnsecuredUrlException(url: baseUrl);
    }
  }

  // Future<String?> getJwtToken() async {
  //   String authToken = await SharedPreferenceStorageService.getJwt();
  //   print(authToken);
  //   return authToken;
  // }

  @override
  Future<Response<dynamic>> get(
    String path, {
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParameters,
    ResponseType responseType = ResponseType.json,
  }) async {
    try {
      // final String? token = await getJwtToken();

      // headers ??= {};
      // if (token != null) {
      //   headers['Authorization'] = 'Bearer $token';
      // }

      final Response<dynamic> response = await _dio.get(
        path,
        queryParameters: queryParameters,
        options: Options(
          headers: headers,
          responseType: responseType,
        ),
      );
      return response;
    } on DioError catch (e) {
      throw e;
    }
  }

  @override
  Future<Response<dynamic>> post(
    String path, {
    Map<String, dynamic>? headers,
    dynamic body = const {},
  }) async {
    try {
      // final String? token = await getJwtToken();

      // headers ??= {};
      // if (token != null) {
      //   headers['Authorization'] = 'Bearer $token';
      // }

      final Response<dynamic> response = await _dio.post(
        path,
        options: Options(
          headers: headers,
          responseType: ResponseType.json,
        ),
        data: body,
      );
      return response;
    } on DioError catch (e) {
      throw e;
    }
  }

  @override
  Future<Response<dynamic>> patch(
    String path, {
    Map<String, dynamic>? headers,
    dynamic body = const {},
  }) async {
    try {
      // final String? token = await getJwtToken();

      // headers ??= {};
      // if (token != null) {
      //   headers['Authorization'] = 'Bearer $token';
      // }

      final Response<dynamic> response = await _dio.patch(
        path,
        options: Options(
          headers: headers,
          responseType: ResponseType.json,
        ),
        data: body,
      );
      return response;
    } on DioError catch (e) {
      throw e;
    }
  }

  @override
  Future<Response<dynamic>> download(String path, String savePath) async {
    try {
      final response = await _dio.download(path, savePath);
      return response;
    } on DioError catch (e) {
      throw e;
    }
  }

  @override
  Future<Response<dynamic>> put(
    String path, {
    Map<String, dynamic>? headers,
    dynamic body = const {},
  }) async {
    try {
      // final String? token = await getJwtToken();

      // headers ??= {};
      // if (token != null) {
      //   headers['Authorization'] = 'Bearer $token';
      // }

      final Response<dynamic> response = await _dio.put(
        path,
        options: Options(
          headers: headers,
          responseType: ResponseType.json,
        ),
        data: body,
      );
      return response;
    } on DioError catch (e) {
      throw e;
    }
  }

  @override
  Future<Response<dynamic>> delete(
    String path, {
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParameters,
    ResponseType responseType = ResponseType.json,
    dynamic body = const {},
  }) async {
    try {
      // final String? token = await getJwtToken();

      // headers ??= {};
      // if (token != null) {
      //   headers['Authorization'] = 'Bearer $token';
      // }

      final Response<dynamic> response = await _dio.delete(
        path,
        queryParameters: queryParameters,
        options: Options(
          headers: headers,
          responseType: responseType,
        ),
        data: body,
      );
      return response;
    } on DioError catch (e) {
      throw e;
    }
  }
}
