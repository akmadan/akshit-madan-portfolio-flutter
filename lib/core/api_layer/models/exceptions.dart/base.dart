abstract class ApiException implements Exception {
  final String method;
  final Uri url;
  final dynamic data;
  final Map<String, String>? headers;
  final Exception? exception;

  ApiException({
    required this.method,
    required this.url,
    required this.data,
    required this.headers,
    this.exception,
  });

  @override
  String toString() {
    return "Method: $method\n"
        "URL: $url\n"
        "Request Data: ${data.toString()}\n"
        "Headers: $headers\n"
        "Exception: ${exception?.toString()}\n";
  }
}
