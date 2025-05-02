import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/gaps.dart';
import '../../../../core/extensions/context_extension.dart';
import '../../../../core/extensions/number_extension.dart';
import '../../../../core/themes/app_text_styles.dart';
import '../../../../di/service_locator.dart';
import '../../../../domain/entity/character.dart';
import '../../../../domain/use_case/get_character_use_case.dart';
import '../../../../domain/use_case/get_favorites_use_case.dart';
import '../../../../domain/use_case/store_favorite_use_case.dart';
import '../../../../l10n/localizations_utils.dart';
import '../../../utils/widget/simple_app_bar_widget.dart';
import '../bloc/home_bloc.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:
          (_) => HomeBloc(
            getIt<GetCharactersUseCase>(),
            getIt<StoreFavoriteUseCase>(),
            getIt<GetFavoritesUseCase>(),
          )..add(const HomeEvent.getCharacters()),
      child: const HomeContent(),
    );
  }
}

class HomeContent extends StatefulWidget {
  const HomeContent({super.key});

  @override
  State<HomeContent> createState() => FavoritesContentState();
}

class FavoritesContentState extends State<HomeContent> {
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();
  final List<CharacterDetails> _favorites = [];

  @override
  void initState() {
    super.initState();
    final state = context.read<HomeBloc>().state;
    _favorites.addAll(state.charactersData?.results ?? []);
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<HomeBloc, HomeState>(
      listener: (context, state) {
        if (state.status == HomeStatus.failure) {
          context.showSnackBarMessage(state.errorMessage ?? appLocalizations.unknownErrorMessage);
        }

        final oldIds = _favorites.map((e) => e.id).toSet();
        final newIds = (state.charactersData?.results.map((e) => e.id) ?? []).toSet();

        final removedIds = oldIds.difference(newIds);
        final addedIds = newIds.difference(oldIds);

        for (final id in removedIds) {
          final index = _favorites.indexWhere((e) => e.id == id);
          if (index != -1) {
            final removedItem = _favorites.removeAt(index);
            _listKey.currentState?.removeItem(
              index,
              (context, animation) => _buildAnimatedItem(context, removedItem, animation),
            );
          }
        }

        for (final id in addedIds) {
          final item = state.charactersData?.results.firstWhere((e) => e.id == id);
          if (item != null) {
            _favorites.insert(0, item);
            _listKey.currentState?.insertItem(0);
          }
        }
      },
      child: Scaffold(
        backgroundColor: ColorScheme.of(context).surface,
        appBar: SimpleAppBarWidget(title: Text(appLocalizations.appName)),
        body: Padding(
          padding: Gaps.larger.paddingHorizontal,
          child:
              (context.watch<HomeBloc>().state.charactersData?.results.isEmpty ?? true)
                  ? Center(child: Text('No Available Data', style: body1))
                  : AnimatedList(
                    key: _listKey,
                    initialItemCount: _favorites.length,
                    itemBuilder:
                        (context, index, animation) =>
                            _buildAnimatedItem(context, _favorites[index], animation),
                  ),
        ),
      ),
    );
  }

  Widget _buildAnimatedItem(
    BuildContext context,
    CharacterDetails detail,
    Animation<double> animation,
  ) {
    return SizeTransition(sizeFactor: animation, child: _buildCardItem(context, detail));
  }

  Widget _buildCardItem(BuildContext context, CharacterDetails detail) {
    final favorites = context.watch<HomeBloc>().state.cachedFavorites;
    final isFavorite = favorites.any((e) => e.id == detail.id);
    return Card(
      shape: RoundedRectangleBorder(borderRadius: Gaps.medium.radiusAll),
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: Gaps.medium.paddingAll + Gaps.larger.paddingVertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Row(
                  children: [
                    ClipOval(
                      child: Image.network(
                        detail.image,
                        width: 48,
                        height: 48,
                        fit: BoxFit.cover,
                        errorBuilder: (_, __, ___) => const Icon(Icons.person),
                      ),
                    ),
                    Gaps.medium.spaceHorizontal,
                    Text(detail.name, style: body1),
                  ],
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: IconButton(
                    onPressed: () {
                      context.read<HomeBloc>().add(HomeEvent.storeFavorite(details: detail));
                    },
                    icon: Icon(isFavorite ? Icons.star : Icons.star_border, color: Colors.yellow),
                  ),
                ),
              ],
            ),

            Gaps.medium.spaceVertical,
            Text(detail.species, style: body1),
            Text(detail.status, style: body1),
          ],
        ),
      ),
    );
  }
}
