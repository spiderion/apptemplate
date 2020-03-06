import 'package:apptemplate/core/base_page/base_page_components.dart';
import 'package:apptemplate/core/bloc/base_bloc.dart';
import 'package:apptemplate/features/login/login_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LogInPage extends BaseWidget {
  LogInPage(Function getBloc) : super(getBloc);

  @override
  _LogInPageState createState() => _LogInPageState();
}

class _LogInPageState extends BaseState<LogInPage, BaseBloc> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Center(child: Text("LogInPage"),),
        RaisedButton(child: Text("log in now"), onPressed:(){
          bloc.event.add(LogInClickEvent());
        },)
      ],
    );
  }
}
