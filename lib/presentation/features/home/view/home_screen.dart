import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/gaps.dart';
import '../../../../core/extensions/context_extension.dart';
import '../../../../core/extensions/number_extension.dart';
import '../../../../core/themes/app_text_styles.dart';
import '../../../../di/service_locator.dart';
import '../../../../domain/entity/character.dart';
import '../../../../domain/use_case/get_cached_character_use_case.dart';
import '../../../../domain/use_case/get_character_use_case.dart';
import '../../../../domain/use_case/get_favorites_use_case.dart';
import '../../../../domain/use_case/store_character_use_case.dart';
import '../../../../domain/use_case/store_favorite_use_case.dart';
import '../../../../l10n/localizations_utils.dart';
import '../../../utils/widget/pagination_widget.dart';
import '../../../utils/widget/simple_app_bar_widget.dart';
import '../../internet_checker/bloc/internet_checker_bloc.dart';
import '../bloc/home_bloc.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isOnline =
        context.watch<InternetCheckerCubit>().state.status == InternetCheckerStatus.online;
    print("LLL::: $isOnline");
    return BlocProvider(
      create:
          (_) => HomeBloc(
            getIt<GetCharactersUseCase>(),
            getIt<StoreFavoriteUseCase>(),
            getIt<GetFavoritesUseCase>(),
            getIt<StoreCharacterUseCase>(),
            getIt<GetCachedCharacterUseCase>(),
          ),
      child: HomeContent(isOnline: isOnline),
    );
  }
}

class HomeContent extends StatefulWidget {
  const HomeContent({super.key, required this.isOnline});

  final bool isOnline;

  @override
  State<HomeContent> createState() => HomeContentState();
}

class HomeContentState extends State<HomeContent> {
  @override
  void initState() {
    context.read<HomeBloc>().add(HomeEvent.getCharacters(internetStatus: widget.isOnline));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<HomeBloc, HomeState>(
      listener: (context, state) {
        print("OOOOOO::: ${state.paginatedCharacters.length}");
        if (state.status == HomeStatus.failure) {
          context.showSnackBarMessage(state.errorMessage ?? appLocalizations.unknownErrorMessage);
        }
      },
      child: Scaffold(
        backgroundColor: ColorScheme.of(context).surface,
        appBar: SimpleAppBarWidget(title: Text(appLocalizations.appName)),
        body:
            context.watch<HomeBloc>().state.status == HomeStatus.loading
                ? const Center(child: CircularProgressIndicator())
                : Padding(
                  padding: Gaps.larger.paddingHorizontal,
                  child:
                      (context.watch<HomeBloc>().state.paginatedCharacters.isEmpty)
                          ? Center(child: Text('No Data Available', style: body1))
                          : RefreshIndicator(
                            onRefresh: () async {
                              context.read<HomeBloc>().add(
                                const HomeEvent.resetPaginationState(pagination: []),
                              );
                              context.read<HomeBloc>().add(
                                HomeEvent.getCharacters(internetStatus: widget.isOnline),
                              );
                            },
                            child: BlocBuilder<HomeBloc, HomeState>(
                              builder: (context, state) => PaginationWidget(
                                itemCount: state.paginatedCharacters.length,
                                isLoading: state.isLoadingMore,
                                onLoadMore: () async {
                                  print("KOOOOOO");
                                  context.read<HomeBloc>().add(
                                    HomeEvent.loadMoreCharacters(
                                      internetStatus: widget.isOnline,
                                      page: state.currentPage + 1,
                                    ),
                                  );
                                },
                                builder:
                                    (context, index) => _buildAnimatedItem(
                                      context,
                                      state.paginatedCharacters[index],
                                      const AlwaysStoppedAnimation(1.0),
                                    ),
                              ),
                            ),
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
          ],
        ),
      ),
    );
  }
}
