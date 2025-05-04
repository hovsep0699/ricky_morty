import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';

import '../../../../core/router/app_router.dart';
import '../../../utils/widget/bottom_natigation_bar_widget.dart';
import '../../../utils/widget/simple_drawer_widget.dart';

@RoutePage()
class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => NavigationScreenState();
}

class NavigationScreenState extends State<NavigationScreen> {
  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        HomeRoute(),
        FavoritesRoute(),
      ],
      drawer: const SimpleDrawerWidget(),
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBarWidget(
          currentIndex: tabsRouter.activeIndex,
          onTabChange: (index) {
            tabsRouter.stackRouterOfIndex(index)?.popUntil((route) => route.isFirst);
            if (index != tabsRouter.activeIndex) {
              tabsRouter.setActiveIndex(index);
            }
          },
        );
      },
    );
  }
}
