enum SortOption {
  status,
  gender,
  species,
  name,
  createdDate,
}


extension SortOptionsExtension on SortOption {
  String  toValue() {
    switch (this) {
      case SortOption.status:
        return 'Status';
      case SortOption.gender:
        return 'Gender';
      case SortOption.species:
        return 'Species';
      case SortOption.name:
        return 'Name';
      case SortOption.createdDate:
        return 'Created Date';
    }
  }
}