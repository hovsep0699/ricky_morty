import 'package:auto_mappr_annotation/auto_mappr_annotation.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import '../../../core/constants/gaps.dart';
import '../../../core/constants/preference_values.dart';
import '../../../core/extensions/locale_extension.dart';
import '../../../core/extensions/number_extension.dart';
import '../../../core/extensions/theme_mode_extension.dart';
import '../../../core/notifiers/locale_notifier.dart';
import '../../../core/notifiers/theme_notifier.dart';
import '../../../resources/assets/assets.gen.dart';
import 'simple_dropdown_widget.dart';

class SimpleAppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const SimpleAppBarWidget({
    super.key,
    this.showBackButton = false,
    this.actions,
    this.leadingIcon,
    this.onTrailingPress,
    this.contentPadding,
    this.toolBarHeight = kToolbarHeight,
    this.onLeadingPress,
    this.title,
  });

  final EdgeInsets? contentPadding;
  final bool showBackButton;
  final Widget? leadingIcon;
  final double toolBarHeight;
  final void Function(BuildContext)? onLeadingPress;
  final VoidCallback? onTrailingPress;
  final Widget? title;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    final localeNotifier = Provider.of<LocaleNotifier>(context);
    // print("AAAA::: ${localeNotifier.locale}");
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    return AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.light,
        surfaceTintColor: ColorScheme.of(context).onPrimary,
        centerTitle: true,
        actionsPadding: Gaps.medium.paddingHorizontal,
        actions: actions ??
            [
              // Expanded(
              //   flex: 2,
              //   child: SimpleDropDownButton<String>(
              //     icon: Icon(Icons.menu_book, color: ColorScheme.of(context).primary),
              //     items: LocaleMappings.localeDisplayNames.values.toList(),
              //     onChanged: (String? value) {
              //       final loc = LocaleMappings.localeDisplayNames.where<String, String>((key, locale) => value == locale);
              //       localeNotifier.setLocale(Locale(loc.keys.firstOrNull ?? PreferenceValues.localeEn));
              //     },
              //   ),
              // ),
              // // Gaps.extraLarge.spaceHorizontal,
              //
              // // Gaps.large.spaceHorizontal,
              // Expanded(
              //   flex: 2,
              //   child: SimpleDropDownButton<String>(
              //     icon: Assets.icons.language.svg(colorFilter: ColorFilter.mode(ColorScheme.of(context).primary, BlendMode.srcIn)),
              //     items: ThemeMode.values.stringValues,
              //     onChanged: (String? value) {
              //       themeNotifier.setTheme(ThemeMode.values.fromString(value ?? PreferenceValues.lightTheme));
              //     },
              //   ),
              // ),
              // Gaps.large.spaceHorizontal,
            ],
        title: title,
        leading: showBackButton
            ? const AutoLeadingButton()
            : Builder(
                builder: (context) => IconButton(
                  onPressed: () => onLeadingPress?.call(context),
                  icon: leadingIcon != null
                      ? leadingIcon!
                      : Assets.icons.menu.svg(
                          colorFilter:
                              ColorFilter.mode(ColorScheme.of(context).primary, BlendMode.srcIn)),
                ),
              ));
  }

  @override
  Size get preferredSize => Size.fromHeight(toolBarHeight);
}
