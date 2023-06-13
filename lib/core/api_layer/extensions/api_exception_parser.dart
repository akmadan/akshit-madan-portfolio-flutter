import 'package:akshit_madan/core/api_layer/models/exceptions.dart/other.dart';
import 'package:akshit_madan/core/api_layer/models/exceptions.dart/response.dart';
import 'package:akshit_madan/core/api_layer/models/exceptions.dart/timeout.dart';
import 'package:dio/dio.dart';

import '../models/exceptions.dart/base.dart';

extension ApiExceptionParser on DioError {
  ApiException parse() {
    final headers = requestOptions.headers.map(
      (key, value) => MapEntry<String, String>(key, value.toString()),
    );
    switch (type) {
      case DioExceptionType.receiveTimeout:
        return ResponseApiException(
          method: requestOptions.method,
          url: requestOptions.uri,
          data: response?.data,
          headers: headers,
        );

      case DioExceptionType.connectionTimeout:
        return ConnectionTimeoutException(
          method: requestOptions.method,
          url: requestOptions.uri,
          data: requestOptions.data,
          headers: headers,
          timeout: requestOptions.connectTimeout!,
        );

      case DioExceptionType.sendTimeout:
        return SendTimeoutException(
          method: requestOptions.method,
          url: requestOptions.uri,
          data: requestOptions.data,
          headers: headers,
          timeout: requestOptions.connectTimeout!,
        );

      case DioExceptionType.cancel:
        return OtherApiException(
          method: requestOptions.method,
          url: requestOptions.uri,
          data: requestOptions.data,
          headers: headers,
          exception: Exception(),
        );

      default:
        return OtherApiException(
          method: requestOptions.method,
          url: requestOptions.uri,
          data: requestOptions.data,
          headers: headers,
          exception: Exception(),
        );

      // case DioExceptionType.other:
      // return OtherApiException(
      //   method: requestOptions.method,
      //   url: requestOptions.uri,
      //   data: requestOptions.data,
      //   headers: headers,
      //   exception: error,
      // );
    }
  }
}
