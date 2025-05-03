import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/themes/app_text_styles.dart';
import '../../../../../l10n/localizations_utils.dart';
import '../../../../utils/widget/pagination_widget.dart';
import '../../bloc/home_bloc.dart';
import '../../utils/character_animation_builder.dart';

class CharacterListWidget extends StatelessWidget {
  const CharacterListWidget({required this.state, required this.onLoadMore, super.key});

  final HomeState state;

  final VoidCallback onLoadMore;

  @override
  Widget build(BuildContext context) {
    if (state.paginatedCharacters.isEmpty) {
      return Center(child: Text(appLocalizations.lblNoDataAvailable, style: body1.copyWith(color: ColorScheme.of(context).tertiary)));
    }

    return PaginationWidget(
      itemCount: state.paginatedCharacters.length,
      isLoading: state.isLoadingMore,
      onLoadMore: () async => onLoadMore(),
      builder:
          (context, index) => buildAnimatedCharacterItem(
            context: context,
            detail: state.paginatedCharacters[index],
            animation: const AlwaysStoppedAnimation(1.0),
            characters: state.cachedFavorites,
          ),
    );
  }
}
