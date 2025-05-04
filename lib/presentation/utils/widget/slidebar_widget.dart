import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/constants/constants.dart';
import '../../../core/constants/gaps.dart';
import '../../../core/extensions/context_extension.dart';
import '../../../core/extensions/locale_extension.dart';
import '../../../core/extensions/number_extension.dart';
import '../../../core/extensions/string_extension.dart';
import '../../../core/notifiers/locale_notifier.dart';
import '../../../core/notifiers/theme_notifier.dart';
import '../../../core/themes/app_colors.dart';
import '../../../core/themes/app_text_styles.dart';
import '../../../l10n/localizations_utils.dart';
import '../../features/slidebar/model/slide_bar_menu_item.dart';
import 'simple_dropdown_widget.dart';
import 'swipe_button.dart';

class SideBarWidget extends StatelessWidget {
  const SideBarWidget({super.key, required this.items, required this.selectedRouteName});

  final List<SidebarMenuItem> items;
  final String selectedRouteName;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        shape: const OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.zero,
        ),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Stack(
          children: [
            Column(
              children: [
                DrawerHeader(
                  padding: Gaps.large.paddingVertical + Gaps.large.paddingTop + Gaps.large.paddingHorizontal,
                  child: Text(
                    appLocalizations.appName,
                    style: header3.copyWith(color: ColorScheme.of(context).tertiary),
                  ),
                ),
                SimpleDropDownButton(
                  selectedItem: context.select<LocaleNotifier, Locale>((notifier) => notifier.locale).toValue(),
                  items: LocaleMappings.localeDisplayNames.values.toList(),
                  onChanged: (e) {
                    final locale = e?.toLocale;
                    if (locale != null) {
                      context.read<LocaleNotifier>().setLocale(locale);
                    }
                  },
                ),
              ],
            ),
            Positioned(
              bottom: 50,
              left: 100,
              child: SwipeButtonWidget(
                initialValue:
                    context.select<ThemeNotifier, ThemeMode>((notifier) => notifier.themeMode) ==
                    ThemeMode.dark,
                onToggle: (enabled) {
                  if (enabled) {
                    context.read<ThemeNotifier>().setTheme(ThemeMode.dark);
                  } else {
                    context.read<ThemeNotifier>().setTheme(ThemeMode.light);
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
