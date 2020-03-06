import 'dart:async';

import 'package:testtodelete/core/states/primary/base_bloc_primary_state.dart';


class SectionOneBloc {
  final _pageController = StreamController<BaseBlocPrimaryState>();

  Stream<BaseBlocPrimaryState> get streamStoryPageState => _pageController.stream;

  SectionOneBloc() {}

  dispose() {
    _pageController.close();
  }
}
