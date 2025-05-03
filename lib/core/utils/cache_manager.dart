import 'package:flutter_cache_manager/flutter_cache_manager.dart';


class CustomCacheManager {
  static CacheManager instance = CacheManager(
    Config(
      'characters_key',
      stalePeriod: const Duration(days: 7), // keep for 7 days
      maxNrOfCacheObjects: 100,
    ),
  );
}