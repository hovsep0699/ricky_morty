
import 'package:auto_route/auto_route.dart';

import '../../presentation/features/favorites/view/favorites_screen.dart';
import '../../presentation/features/home/view/home_screen.dart';
import '../../presentation/features/navigation/view/navigation_screen.dart';


part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      path: '/',
      page: NavigationRoute.page,
      children: [
        AutoRoute(initial: true, path: 'home', page: HomeRoute.page, maintainState: false),
        AutoRoute(path: 'favorites', page: FavoritesRoute.page, maintainState: false),
      ],
    ),
  ];
}
