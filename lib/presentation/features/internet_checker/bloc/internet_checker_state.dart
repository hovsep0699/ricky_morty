part of 'internet_checker_bloc.dart';


@freezed
class InternetCheckerState with _$InternetCheckerState {
  const factory InternetCheckerState({
    @Default(InternetCheckerStatus.offline) InternetCheckerStatus status,
    @Default(InternetCheckerStatus.offline) InternetCheckerStatus oldStatus,
  }) = _Initial;
}

enum InternetCheckerStatus {online, offline}