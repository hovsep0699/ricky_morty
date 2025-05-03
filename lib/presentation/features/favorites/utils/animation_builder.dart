import 'package:flutter/cupertino.dart';

import '../../../../domain/entity/character.dart';
import '../../widgets/character_details_widget.dart';

Widget buildAnimatedFavoriteItem({
  required CharacterDetails detail,
  required Animation<double> animation,
  required VoidCallback onRemove,
  required List<CharacterDetails> animatedFavorites,
}) {
  return SizeTransition(
    sizeFactor: animation,
    child: CharacterDetailsWidget(
      hasRemoveButton: true,
      onRemove: onRemove,
      cachedFavorites: animatedFavorites,
      detail: detail,
    ),
  );
}
