import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../di/service_locator.dart';
import '../network/service/internet_checker.dart';
import '../presentation/features/internet_checker/bloc/internet_checker_bloc.dart';

Widget provideBlocProviders({required Widget child}) {
  return MultiBlocProvider(
    providers: [
      BlocProvider(
          create: (_) => InternetCheckerCubit(getIt<NetworkStatusService>())..startListening()
      )
    ],
    child: child,
  );
}
