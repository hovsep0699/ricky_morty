import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

class NetworkStatusService {
  NetworkStatusService() {
    Connectivity().onConnectivityChanged.listen((status) async {
      final hasConnection = await InternetConnectionChecker.instance.hasConnection;
      _controller.sink.add(hasConnection);
    });
    _init();
  }
  final _controller = StreamController<bool>.broadcast();

  Future<void> _init() async {
    final hasConnection = await InternetConnectionChecker.instance.hasConnection;
    _controller.sink.add(hasConnection);
  }

  Stream<bool> get internetStatusStream => _controller.stream;

  void dispose() => _controller.close();
}
