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
import '../../../utils/widget/simple_app_bar_widget.dart';
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
          )..add(const FavoritesEvent.getFavorites()),
      child: const FavoritesContent(),
    );
  }
}

class FavoritesContent extends StatelessWidget {
  const FavoritesContent({super.key});

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
        body: Padding(
          padding: Gaps.larger.paddingHorizontal,
          child: AnimatedFavoritesList(
            favorites: context.select<FavoritesBloc, List<CharacterDetails>>(
              (FavoritesBloc bloc) => bloc.state.favorites,
            ),
            onRemove:
                (detail) =>
                    context.read<FavoritesBloc>().add(FavoritesEvent.remoteFavorite(id: detail.id)),
          ),
        ),
      ),
    );
  }
}
