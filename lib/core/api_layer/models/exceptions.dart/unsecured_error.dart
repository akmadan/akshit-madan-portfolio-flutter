class UnsecuredUrlException implements Exception {
  final String message;

  UnsecuredUrlException({required String url})
      : message = "$url is not using HTTPS scheme";

  @override
  String toString() {
    return message;
  }
}
