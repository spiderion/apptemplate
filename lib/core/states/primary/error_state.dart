import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:apptemplate/core/states/primary/base_bloc_primary_state.dart';

class ErrorState extends BaseBlocPrimaryState {
  final String message;

  ErrorState({@required this.message});

  @override
  call(param) {
    if (param is BuildContext) {
      /* Fluttertoast.showToast(
          msg: Translations.of(param).text(message),
          toastLength: Toast.LENGTH_LONG,
          backgroundColor: Theme.of(param).errorColor,
          gravity: ToastGravity.CENTER);*/
    }
  }
}
