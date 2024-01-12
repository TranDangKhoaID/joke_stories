enum Flavor {
  dev,
  pro,
  sta,
}

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavor.dev:
        return 'Development';
      case Flavor.pro:
        return 'Production';
      case Flavor.sta:
        return 'Stagging';
      default:
        return 'Joke';
    }
  }
}
