import 'dart:async';

import 'package:apptemplate/models/user.dart';
import 'package:flutter/widgets.dart';

class UserFullDataNotifier extends ValueNotifier<User> {
  UserFullDataNotifier(User value) : super(value) {
    _listenInternal();
  }

  StreamController _userDataController = StreamController<User>();

  void _listenUserDataFromDataBase() async {
    _userDataController.sink.add(User("from database mock"));
  }

  _listenInternal() {
    value = User("id");
  }

  register() {
    _listenUserDataFromDataBase();
  }

  clearData() {
    value = null;
  }

  dispose() {
    _userDataController?.close();
    super.dispose();
  }
}
