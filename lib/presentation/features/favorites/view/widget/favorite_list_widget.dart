import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/themes/app_text_styles.dart';
import '../../../../../domain/entity/character.dart';
import '../../../../../l10n/localizations_utils.dart';
import '../../utils/animation_builder.dart';

class AnimatedFavoritesList extends StatefulWidget {
  const AnimatedFavoritesList({super.key, required this.favorites, required this.onRemove});

  final List<CharacterDetails> favorites;
  final void Function(CharacterDetails) onRemove;

  @override
  State<AnimatedFavoritesList> createState() => _AnimatedFavoritesListState();
}

class _AnimatedFavoritesListState extends State<AnimatedFavoritesList> {
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();
  final ValueNotifier<List<CharacterDetails>> _animatedFavorites = ValueNotifier<List<CharacterDetails>>([]);

  @override
  void initState() {
    super.initState();
    _animatedFavorites.value.addAll(widget.favorites);
  }

  @override
  void didUpdateWidget(covariant AnimatedFavoritesList oldWidget) {
    super.didUpdateWidget(oldWidget);
    _handleListChanges(oldWidget.favorites, widget.favorites);
  }

  void _handleListChanges(List<CharacterDetails> oldList, List<CharacterDetails> newList) {
    final oldIds = oldList.map((e) => e.id).toSet();
    final newIds = newList.map((e) => e.id).toSet();

    final removedIds = oldIds.difference(newIds);
    final addedIds = newIds.difference(oldIds);

    for (final id in removedIds) {
      final index = _animatedFavorites.value.indexWhere((e) => e.id == id);
      if (index != -1) {
        final removedItem = _animatedFavorites.value.removeAt(index);
        _listKey.currentState?.removeItem(
          index,
          (context, animation) => buildAnimatedFavoriteItem(
            detail: removedItem,
            animation: animation,
            animatedFavorites: _animatedFavorites.value,
            onRemove: () => widget.onRemove(_animatedFavorites.value[index]),
          ),
        );
      }
    }

    for (final id in addedIds) {
      final item = newList.firstWhere((e) => e.id == id);
      _animatedFavorites.value.insert(0, item);
      _listKey.currentState?.insertItem(0);
    }
    if (removedIds.isEmpty && addedIds.isEmpty) {
      // Rebuild list based on new sorted order
      setState(() {
        _animatedFavorites.value
          ..clear()
          ..addAll(newList);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (widget.favorites.isEmpty) {
      return Center(child: Text(appLocalizations.lblEmptyFavorites, style: body1.copyWith(color: ColorScheme.of(context).tertiary)));
    }
    return  ValueListenableBuilder<List<CharacterDetails>>(
        valueListenable: _animatedFavorites,
        builder: (context, favorites, _) => AnimatedList(
      key: _listKey,
      initialItemCount: favorites.length,
      itemBuilder: (context, index, animation) {
        return buildAnimatedFavoriteItem(
          detail: favorites[index],
          animation: animation,
          animatedFavorites: favorites,
          onRemove: () => widget.onRemove(favorites[index]),
        );
      },
    ));
  }
}
