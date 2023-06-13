enum Flavour { development, production, staging }

extension StringX on String {
  Flavour get flavourByString {
    return Flavour.values.firstWhere((flavour) => flavour.name == this);
  }
}

abstract class EnvironmentBase {
  final Flavour flavour;

  EnvironmentBase(this.flavour);

  String get flavourName => flavour.name;
}

abstract class Environment extends EnvironmentBase with ApiMixin {
  Environment(Flavour flavour) : super(flavour);

  static Environment? _instance;

  static Environment get instance =>
      _instance ??
      (throw Exception(
          "You need to call `Environment.initialize` before accessing the getter function"));

  factory Environment.initialize({Flavour? flavour}) {
    flavour ??=
        const String.fromEnvironment("flavor", defaultValue: "production")
            .flavourByString;

    return _instance ??= _getInstanceByFlavour(flavour);
  }

  static Environment _getInstanceByFlavour(Flavour flavour) {
    switch (flavour) {
      case Flavour.development:
        return _Dev();
      case Flavour.staging:
        return _Staging();
      case Flavour.production:
        return _Prod();
    }
  }
}

class _Dev extends Environment {
  _Dev() : super(Flavour.development);

  @override
  String get baseUrl =>
      "https://prod-akshit-madan-website-server.onrender.com/";

  @override
  String get likesBaseUrl => "${baseUrl}likes";

  @override
  String get viewsBaseUrl => "${baseUrl}views";

  @override
  String get videosBaseUrl => "${baseUrl}getVideos";
}

class _Staging extends Environment {
  _Staging() : super(Flavour.staging);
  @override
  String get baseUrl =>
      "https://prod-akshit-madan-website-server.onrender.com/";

  @override
  String get likesBaseUrl => "${baseUrl}likes/";

  @override
  String get viewsBaseUrl => "${baseUrl}views";

  @override
  String get videosBaseUrl => "${baseUrl}getVideos";
}

class _Prod extends Environment {
  _Prod() : super(Flavour.production);
  @override
  String get baseUrl =>
      "https://prod-akshit-madan-website-server.onrender.com/";

  @override
  String get likesBaseUrl => "${baseUrl}likes";

  @override
  String get viewsBaseUrl => "${baseUrl}views";

  @override
  String get videosBaseUrl => "${baseUrl}getVideos";
}

mixin ApiMixin {
  String get baseUrl;

  String get likesBaseUrl;

  String get viewsBaseUrl;

  String get videosBaseUrl;
}
