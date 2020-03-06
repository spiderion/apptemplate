import 'dart:async';

import 'package:apptemplate/core/bloc/base_bloc.dart';
import 'package:apptemplate/core/bloc/core_bloc_event.dart';
import 'package:apptemplate/features/root/root_event.dart';

class RootBloc extends BaseBloc {
  final _rootPageController = StreamController<int>.broadcast();

  RootBloc() {}

  Stream<int> get streamCurrentIndex => _rootPageController.stream;

  void dispose() {
    _rootPageController.close();
    super.dispose();
  }

  @override
  void onUiDataChange(BaseBlocEvent event) {
    if (event is BottomNavigationBarTapEvent) {
      _rootPageController.sink.add(event.currentIndex);
    }
  }
}
