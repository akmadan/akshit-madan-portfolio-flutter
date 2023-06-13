class UninitializedException implements Exception {
  final String message;

  UninitializedException({required this.message});

  @override
  String toString() {
    return message;
  }
}
