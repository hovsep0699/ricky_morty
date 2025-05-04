import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/router/routes.dart';
import '../../../l10n/localizations_utils.dart';
import '../../features/slidebar/model/slide_bar_menu_item.dart';
import 'slidebar_widget.dart';

class SimpleDrawerWidget extends StatelessWidget {
  const SimpleDrawerWidget({super.key});

  List<SidebarMenuItem> _buildMenuItems(BuildContext context) {
    return [
      SidebarMenuItem(
        onPress: () {},
        icon: Icon(Icons.settings, color: ColorScheme.of(context).tertiary),
        title: appLocalizations.lblSettings,
        routeName: Routes.settings.withRootRoute,
        titleColor: ColorScheme.of(context).tertiary,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return SideBarWidget(
      items: _buildMenuItems(context),
      selectedRouteName: context.router.current.name,
    );
  }
}
