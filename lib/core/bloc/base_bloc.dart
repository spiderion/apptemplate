library core.bloc;

import 'dart:async';

import 'package:apptemplate/core/bloc/core_bloc_event.dart';
import 'package:apptemplate/core/states/dataState/base_bloc_secondary_state.dart';
import 'package:apptemplate/core/states/primary/base_bloc_primary_state.dart';

///The core.bloc holds the state of the widget
abstract class BaseBloc {
  BaseBloc() {
    _eventController.stream.listen(onUiDataChange);
  }

  List<Stream> _secondaryStreams = <Stream>[];

  void onUiDataChange(BaseBlocEvent event);

  final _eventController = StreamController<BaseBlocEvent>();
  final _stateController = StreamController<BaseBlocPrimaryState>();

  Stream<BaseBlocPrimaryState> get baseState => _stateController.stream;

  Sink<BaseBlocEvent> get event => _eventController.sink;

  Sink<BaseBlocPrimaryState> get sinkState => _stateController.sink;

  Stream<T> getStreamOfType<T extends BaseBlocDataState>() =>
      _secondaryStreams.singleWhere((element) => element is Stream<T>, orElse: () => null);

  addSecondaryStreams(List<Stream> streams) => _secondaryStreams.addAll(streams);

  dispose() {
    _eventController.close();
    _stateController.close();
  }
}
