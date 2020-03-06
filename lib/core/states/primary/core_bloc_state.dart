import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:apptemplate/core/loaders/loader.dart';

import 'base_bloc_primary_state.dart';

class EndProgressState extends BaseBlocPrimaryState {
  @override
  call(param) {
    if (param is BuildContext) {
      Navigator.of(param, rootNavigator: true).pop();
    }
  }
}

class StartProgressState extends BaseBlocPrimaryState {
  final bool barrierDismissible;

  StartProgressState({this.barrierDismissible});

  @override
  call(param) {
    if (param is BuildContext) {
      showDialog(
          context: param,
          barrierDismissible: barrierDismissible ?? false,
          builder: (context) {
            return Loader();
          });
    }
  }
}
