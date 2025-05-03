abstract class Routes {
  static String get root => '/';

  static String get home => 'home';

  static String get favorites => 'favorites';

  static String get settings => 'settings';
}

extension RouteExtension on String {
  String get withRootRoute => '${Routes.root}$this';
}
