class ApiResponse<T> {
  final T? _data;
  final String? _error;

  const ApiResponse({
    T? data,
    String? error,
  })  : _data = data,
        _error = error;

  T? get getData => _data;

  String? get getException => _error;

  bool get hasData => _data != null;

  bool get hasException => _error != null;
}
