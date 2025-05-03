import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/internet_checker_bloc.dart';

class InternetCheckerObserverWidget extends StatelessWidget {
  const InternetCheckerObserverWidget({super.key, required this.listener, required this.child});

  final void Function(bool) listener;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InternetCheckerCubit, InternetCheckerState>(
      builder: (context, state) {
        listener(state.status == InternetCheckerStatus.online);
        return child;
      },
    );
  }
}
