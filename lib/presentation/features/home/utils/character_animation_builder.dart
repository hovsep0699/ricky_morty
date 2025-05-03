import 'package:flutter/cupertino.dart';

import '../../../../domain/entity/character.dart';
import '../../widgets/character_details_widget.dart';

Widget buildAnimatedCharacterItem({
  required BuildContext context,
  required CharacterDetails detail,
  required Animation<double> animation,
  required List<CharacterDetails> characters,
}) {
  return SizeTransition(
    sizeFactor: animation,
    child: CharacterDetailsWidget(cachedFavorites: characters, detail: detail),
  );
}
