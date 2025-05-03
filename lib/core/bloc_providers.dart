import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


Widget provideBlocProviders({required Widget child}) {
  return MultiBlocProvider(
    providers: [],
    child: child,
  );
}
