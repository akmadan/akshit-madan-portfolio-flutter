import 'package:dio/dio.dart';

extension ApiResponseParser on Response {
  bool isSuccessful() => (statusCode ?? 0) >= 200 && (statusCode ?? 0) <= 300;

  dynamic getDataFieldFromJson() => data["data"];
}
