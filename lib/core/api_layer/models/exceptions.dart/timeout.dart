import 'package:akshit_madan/core/api_layer/models/exceptions.dart/base.dart';

abstract class TimeoutException extends ApiException {
  final Duration timeout;

  TimeoutException({
    required String method,
    required Uri url,
    required dynamic data,
    required Map<String, String>? headers,
    required this.timeout,
    Exception? exception,
  }) : super(
          method: method,
          url: url,
          data: data,
          headers: headers,
          exception: exception,
        );

  @override
  String toString() {
    return "${super.toString()}Timedout: ${timeout.inMilliseconds}ms\n";
  }
}

class ConnectionTimeoutException extends TimeoutException {
  ConnectionTimeoutException({
    required String method,
    required Uri url,
    required dynamic data,
    required Map<String, String>? headers,
    required Duration timeout,
    Exception? exception,
  }) : super(
          method: method,
          url: url,
          data: data,
          headers: headers,
          exception: exception,
          timeout: timeout,
        );
}

class RequestTimeoutException extends TimeoutException {
  RequestTimeoutException({
    required String method,
    required Uri url,
    required dynamic data,
    required Map<String, String>? headers,
    required Duration timeout,
    Exception? exception,
  }) : super(
          method: method,
          url: url,
          data: data,
          headers: headers,
          exception: exception,
          timeout: timeout,
        );
}

class SendTimeoutException extends TimeoutException {
  SendTimeoutException({
    required String method,
    required Uri url,
    required dynamic data,
    required Map<String, String>? headers,
    required Duration timeout,
    Exception? exception,
  }) : super(
          method: method,
          url: url,
          data: data,
          headers: headers,
          exception: exception,
          timeout: timeout,
        );
}
