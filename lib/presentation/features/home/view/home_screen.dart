import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/gaps.dart';
import '../../../../core/extensions/context_extension.dart';
import '../../../../core/extensions/number_extension.dart';
import '../../../../core/themes/app_text_styles.dart';
import '../../../../di/service_locator.dart';
import '../../../../domain/use_case/get_cached_character_use_case.dart';
import '../../../../domain/use_case/get_character_use_case.dart';
import '../../../../domain/use_case/get_favorites_use_case.dart';
import '../../../../domain/use_case/store_character_use_case.dart';
import '../../../../domain/use_case/store_favorite_use_case.dart';
import '../../../../l10n/localizations_utils.dart';
import '../../../utils/widget/simple_app_bar_widget.dart';
import '../../../utils/widget/simple_drawer_widget.dart';
import '../../internet_checker/bloc/internet_checker_bloc.dart';
import '../bloc/home_bloc.dart';
import 'widget/character_list_widget.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:
          (_) => HomeBloc(
            getIt<GetCharactersUseCase>(),
            getIt<StoreFavoriteUseCase>(),
            getIt<GetFavoritesUseCase>(),
            getIt<StoreCharacterUseCase>(),
            getIt<GetCachedCharacterUseCase>(),
          ),
      child: BlocSelector<InternetCheckerCubit, InternetCheckerState, InternetCheckerStatus>(
        selector: (state) => state.status,
        builder: (context, status) => HomeContent(isOnline: status == InternetCheckerStatus.online),
      ),
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
    final homeBloc = context.read<HomeBloc>();
    return BlocListener<InternetCheckerCubit, InternetCheckerState>(
      listenWhen: (oldState, state) => oldState.status != state.status,
      listener: (context, state) {
        homeBloc.add(const HomeEvent.resetPaginationState(pagination: []));
        homeBloc.add(
          HomeEvent.getCharacters(internetStatus: state.status == InternetCheckerStatus.online),
        );
      },
      child: BlocListener<HomeBloc, HomeState>(
        listener: (context, state) {
          if (state.status == HomeStatus.failure) {
            context.showSnackBarMessage(state.errorMessage ?? appLocalizations.unknownErrorMessage);
          }
        },
        child: Scaffold(
          backgroundColor: ColorScheme.of(context).surface,
          appBar: SimpleAppBarWidget(
            title: Text(
              appLocalizations.appName,
              style: header1.copyWith(color: ColorScheme.of(context).tertiary),
            ),
            onLeadingPress: (_) => context.showSideBar(),
          ),
          body:
              context.select<HomeBloc, HomeStatus>((HomeBloc bloc) => bloc.state.status) ==
                      HomeStatus.loading
                  ? const Center(child: CircularProgressIndicator())
                  : RefreshIndicator(
                    onRefresh: () async {
                      homeBloc.add(const HomeEvent.resetPaginationState(pagination: []));
                      homeBloc.add(HomeEvent.getCharacters(internetStatus: widget.isOnline));
                    },
                    child: Padding(
                      padding: Gaps.larger.paddingHorizontal,
                      child: BlocBuilder<HomeBloc, HomeState>(
                        builder:
                            (context, state) => CharacterListWidget(
                              state: state,
                              onLoadMore: () {
                                homeBloc.add(
                                  HomeEvent.loadMoreCharacters(
                                    internetStatus: widget.isOnline,
                                    page: state.currentPage + 1,
                                  ),
                                );
                              },
                            ),
                      ),
                    ),
                  ),
        ),
      ),
    );
  }
}
