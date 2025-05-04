import '../../../domain/entity/character.dart';
import 'sort_options.dart';

typedef ComparatorFn = int Function(CharacterDetails a, CharacterDetails b);

final Map<SortOption, ComparatorFn> _comparators = {
  SortOption.status: (a, b) => a.status.toLowerCase().compareTo(b.status.toLowerCase()),
  SortOption.name: (a, b) => a.name.toLowerCase().toLowerCase().compareTo(b.name.toLowerCase()),
  SortOption.species: (a, b) => a.species.toLowerCase().toLowerCase().compareTo(b.species.toLowerCase()),
  SortOption.createdDate: (a, b) => a.created.toLowerCase().compareTo(b.created.toLowerCase()),
  SortOption.gender: (a, b) => a.gender.toLowerCase().compareTo(b.gender.toLowerCase()),
};

abstract class SortFunctions {
  static List<CharacterDetails> sortCharacters(List<CharacterDetails> list, SortOption option) {
    final sorted = [...list];
    final comparator = _comparators[option] ?? _comparators[SortOption.gender]!; // fallback
    sorted.sort(comparator);
    return sorted;
  }
}
