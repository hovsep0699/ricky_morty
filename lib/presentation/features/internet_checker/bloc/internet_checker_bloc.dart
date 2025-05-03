import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../network/service/internet_checker.dart';

part 'internet_checker_state.dart';
part 'internet_checker_bloc.freezed.dart';

class InternetCheckerCubit extends Cubit<InternetCheckerState> {
  InternetCheckerCubit(this.networkStatusService)
      : super(const _Initial());

  final NetworkStatusService networkStatusService;
  late final StreamSubscription<bool> _subscription;

  @override
  Future<void> close() {
    _subscription.cancel();
    return super.close();
  }

  void startListening() {
    _subscription = networkStatusService.internetStatusStream.listen((hasInternet) {
      final oldStatus = state.status;
      final status = hasInternet
          ? InternetCheckerStatus.online
          : InternetCheckerStatus.offline;

      if (oldStatus != status) {
        Future.microtask(() {
          emit(state.copyWith(status: status, oldStatus: oldStatus));
        });
      }
    });
  }
}
