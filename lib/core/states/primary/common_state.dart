import 'package:apptemplate/core/locale/translations.dart';
import 'package:apptemplate/ui_design/app_colors.dart';
import 'package:flutter/widgets.dart';
import 'package:apptemplate/core/states/primary/base_bloc_primary_state.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MessageInfoState extends BaseBlocPrimaryState {
  final String message;
  final String elementNameMessage;

  MessageInfoState(this.message, {this.elementNameMessage});

  @override
  call(param) {
    if (param is BuildContext) {
          Fluttertoast.showToast(
          msg: "${elementNameMessage ?? ""} ${Translations.of(param).text(message)}",
          backgroundColor: AppColors.infoMessageBackground(param),
          toastLength: Toast.LENGTH_LONG);
    }
  }
}

class ContinueState extends BaseBlocPrimaryState {
  @override
  call(param) {
    if (param is Function) {
      param();
    }
  }
}

class PopPageState extends BaseBlocPrimaryState {
  final dynamic returnedParam;

  PopPageState({this.returnedParam});

  @override
  call(param) {
    if (param is BuildContext) {
      Navigator.of(param).pop(true);
    }
  }
}

class PermissionAllowedState extends BaseBlocPrimaryState {
  @override
  call(param) {}
}
