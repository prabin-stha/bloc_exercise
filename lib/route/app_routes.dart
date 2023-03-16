class AppRoutes {
  AppRoutes._singleton();
  static final AppRoutes _singletonInstance = AppRoutes._singleton();
  factory AppRoutes() {
    return _singletonInstance;
  }

  static const String homePage = '/';
  static const String secondPage = '/second';
  static const String thirdPage = '/third';
}
