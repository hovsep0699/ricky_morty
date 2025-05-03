import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/constants/gaps.dart';
import '../../../core/extensions/number_extension.dart';
import '../../../core/themes/app_text_styles.dart';
import '../../../domain/entity/character.dart';
import '../home/bloc/home_bloc.dart';

class CharacterDetailsWidget extends StatelessWidget {
  const CharacterDetailsWidget({
    super.key,
    required this.cachedFavorites,
    required this.detail,
    this.hasRemoveButton = false,
    this.onRemove,
  });

  final List<CharacterDetails> cachedFavorites;
  final CharacterDetails detail;
  final bool hasRemoveButton;
  final VoidCallback? onRemove;

  @override
  Widget build(BuildContext context) {
    final isFavorite = cachedFavorites.any((e) => e.id == detail.id);
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: Gaps.medium.radiusAll),
      elevation: 4,
      margin: Gaps.medium.paddingVertical,
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
                      child: CachedNetworkImage(
                        imageUrl: detail.image,
                        width: 48,
                        height: 48,
                        fit: BoxFit.cover,
                        errorWidget: (_, __, ___) => const Icon(Icons.person),
                      ),
                    ),
                    Gaps.medium.spaceHorizontal,
                    SizedBox(
                      width: 200,
                      child: Text(detail.name, style: body1, overflow: TextOverflow.clip),
                    ),
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
            if (hasRemoveButton)
              Align(
                alignment: Alignment.bottomRight,
                child: IconButton(
                  onPressed: onRemove,
                  icon: const Icon(Icons.delete, color: Colors.red),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
