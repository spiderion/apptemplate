import 'package:apptemplate/core/bloc/base_bloc.dart';
import 'package:apptemplate/core/locale/translations.dart';
import 'package:apptemplate/core/states/primary/base_bloc_primary_state.dart';
import 'package:flutter/material.dart';

abstract class BaseWidget extends StatefulWidget {
  final Function getBloc;

  BaseWidget(this.getBloc, {Key key}) : super(key: key);
}

abstract class BaseState<Page extends BaseWidget, T extends BaseBloc> extends State<Page> {
  T bloc;

  NavigatorState get navigator => Navigator.of(context);

  @override
  void initState() {
    bloc = widget.getBloc();
    bloc?.baseState?.listen(onBlocStateChanged);
    super.initState();
  }

  onBlocStateChanged(BaseBlocPrimaryState smartState) {
    smartState(context);
  }

  String translate(String text) {
    return Translations.of(context).text(text);
  }

  @override
  void dispose() {
    bloc?.dispose();
    super.dispose();
  }
}
