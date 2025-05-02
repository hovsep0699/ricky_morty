import 'package:auto_route/auto_route.dart';
import 'package:chopper/chopper.dart';
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

class FavoritesContent extends StatefulWidget {
  const FavoritesContent({super.key});

  @override
  State<FavoritesContent> createState() => FavoritesContentState();
}

class FavoritesContentState extends State<FavoritesContent> {
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();
  final List<CharacterDetails> _favorites = [];

  @override
  void initState() {
    super.initState();
    final state = context.read<FavoritesBloc>().state;
    _favorites.addAll(state.favorites);
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<FavoritesBloc, FavoritesState>(
      listener: (context, state) {
        if (state.status == FavoritesStatus.failure) {
          context.showSnackBarMessage(state.errorMessage ?? appLocalizations.unknownErrorMessage);
        }

        final oldIds = _favorites.map((e) => e.id).toSet();
        final newIds = state.favorites.map((e) => e.id).toSet();

        final removedIds = oldIds.difference(newIds);
        final addedIds = newIds.difference(oldIds);

        for (final id in removedIds) {
          final index = _favorites.indexWhere((e) => e.id == id);
          if (index != -1) {
            final removedItem = _favorites.removeAt(index);
            _listKey.currentState?.removeItem(
              index,
              (context, animation) => _buildAnimatedItem(removedItem, animation),
              duration: const Duration(milliseconds: 300),
            );
          }
        }

        for (final id in addedIds) {
          final item = state.favorites.firstWhere((e) => e.id == id);
          _favorites.insert(0, item);
          _listKey.currentState?.insertItem(0);
        }
      },
      child: Scaffold(
        backgroundColor: ColorScheme.of(context).surface,
        appBar: const SimpleAppBarWidget(title: Text('Favorites')),
        body: Padding(
          padding: Gaps.larger.paddingHorizontal,
          child:
              context.watch<FavoritesBloc>().state.favorites.isEmpty
                  ? Center(child: Text('No Favorites Yet', style: body1))
                  : AnimatedList(
                    key: _listKey,
                    initialItemCount: _favorites.length,
                    itemBuilder:
                        (context, index, animation) =>
                            _buildAnimatedItem(_favorites[index], animation),
                  ),
        ),
      ),
    );
  }

  Widget _buildAnimatedItem(CharacterDetails detail, Animation<double> animation) {
    return SizeTransition(sizeFactor: animation, child: _buildCardItem(detail));
  }

  Widget _buildCardItem(CharacterDetails detail) {
    final isFavorite = _favorites.any((e) => e.id == detail.id);
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
                      context.read<FavoritesBloc>().add(
                        FavoritesEvent.storeFavorite(detail: detail),
                      );
                    },
                    icon: Icon(isFavorite ? Icons.star : Icons.star_border, color: Colors.yellow),
                  ),
                ),
              ],
            ),

            Gaps.medium.spaceVertical,
            Text(detail.species, style: body1),
            Text(detail.status, style: body1),
            Align(
              alignment: Alignment.bottomRight,
              child: IconButton(
                onPressed: () {
                  context.read<FavoritesBloc>().add(FavoritesEvent.remoteFavorite(id: detail.id));
                },
                icon: const Icon(Icons.delete, color: Colors.red),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
