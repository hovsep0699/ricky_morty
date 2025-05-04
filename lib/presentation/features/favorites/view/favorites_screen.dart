import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/gaps.dart';
import '../../../../core/extensions/context_extension.dart';
import '../../../../core/extensions/number_extension.dart';
import '../../../../core/themes/app_text_styles.dart';
import '../../../../di/service_locator.dart';
import '../../../../domain/entity/character.dart';
import '../../../../domain/use_case/delete_favorite_use_case.dart';
import '../../../../domain/use_case/get_favorites_use_case.dart';
import '../../../../domain/use_case/store_favorite_use_case.dart';
import '../../../../l10n/localizations_utils.dart';
import '../../../utils/helpers/sort_options.dart';
import '../../../utils/widget/simple_app_bar_widget.dart';
import '../../../utils/widget/simple_dropdown_widget.dart';
import '../bloc/favorites_bloc.dart';
import 'widget/favorite_list_widget.dart';

@RoutePage()
class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:
          (_) => FavoritesBloc(
            getIt<StoreFavoriteUseCase>(),
            getIt<GetFavoritesUseCase>(),
            getIt<DeleteFavoriteUseCase>(),
          ),
      child: const FavoritesContent(),
    );
  }
}

class FavoritesContent extends StatefulWidget {
  const FavoritesContent({super.key});

  @override
  State<FavoritesContent> createState() => FavoritesContentState();
}

class FavoritesContentState extends State<FavoritesContent> {
  @override
  void initState() {
    super.initState();
    context.read<FavoritesBloc>().add(const FavoritesEvent.getFavorites());
    context.read<FavoritesBloc>().add(const FavoritesEvent.sortBy(sortOption: SortOption.status));
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<FavoritesBloc, FavoritesState>(
      listener: (context, state) {
        if (state.status == FavoritesStatus.failure) {
          context.showSnackBarMessage(state.errorMessage ?? appLocalizations.unknownErrorMessage);
        }
      },
      child: Scaffold(
        backgroundColor: ColorScheme.of(context).surface,
        appBar: SimpleAppBarWidget(
          title: Text(
            appLocalizations.lblFavorites,
            style: header1.copyWith(color: ColorScheme.of(context).tertiary),
          ),
          onLeadingPress: (_) => context.showSideBar(),
        ),
        body: Column(
          children: [
            Container(
              padding: Gaps.large.paddingHorizontal,
              height: 100,
              child: Row(
                children: [
                  Text('Sort By', style: body1.copyWith(color: ColorScheme.of(context).tertiary)),
                  SimpleDropDownButton<SortOption>(
                    selectedItem: context.select<FavoritesBloc, SortOption>(
                      (bloc) => bloc.state.selectedSortOption,
                    ),
                    items: SortOption.values,
                    onChanged: (option) {
                      print("lll::: $option");
                      if (option != null) {
                        context.read<FavoritesBloc>().add(
                          FavoritesEvent.changeSortOption(sortOption: option),
                        );
                        context.read<FavoritesBloc>().add(
                          FavoritesEvent.sortBy(sortOption: option),
                        );
                      }
                    },
                  ),
                ],
              ),
            ),
            Gaps.large.spaceVertical,
            Expanded(
              child: Padding(
                padding: Gaps.larger.paddingHorizontal,
                child: BlocBuilder<FavoritesBloc, FavoritesState>(
                  builder: (context, state) {
                    print("LLLL::: ${state.favorites.map((e) => e.gender)}");
                    return AnimatedFavoritesList(
                      favorites: state.favorites,
                      onRemove:
                          (detail) => context.read<FavoritesBloc>().add(
                            FavoritesEvent.remoteFavorite(id: detail.id),
                          ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
