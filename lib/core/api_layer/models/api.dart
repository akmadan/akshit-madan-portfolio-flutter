import 'package:dio/dio.dart';

abstract class API {
  Future<Response<dynamic>> get(
    String path, {
    Map<String, dynamic> headers,
    Map<String, dynamic> queryParameters,
  });

  Future<Response<dynamic>> post(
    String path, {
    Map<String, dynamic> headers,
    dynamic body,
  });

  Future<Response<dynamic>> patch(
    String path, {
    Map<String, dynamic> headers,
    dynamic body,
  });

  Future<Response<dynamic>> download(String path, String savePath);

  Future<Response<dynamic>> put(
    String path, {
    Map<String, dynamic> headers,
    dynamic body,
  });

  Future<Response<dynamic>> delete(
    String path, {
    Map<String, dynamic> headers,
    Map<String, dynamic> queryParameters,
    dynamic body,
  });
}
