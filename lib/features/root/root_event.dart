import 'package:apptemplate/core/bloc/core_bloc_event.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract class RootPageEvent extends BaseBlocEvent {
  int currentIndex = 0;
  Widget currentPage;
}

class ProfilePageChangeEvent extends RootPageEvent {
  ProfilePageChangeEvent(Widget page) {
    currentIndex = 2;
    currentPage = page;
  }
}

class SecondPageChangeEvent extends RootPageEvent {
  SecondPageChangeEvent(Widget page) {
    currentIndex = 1;
    currentPage = page;
  }
}

class FirstPageChangeEvent extends RootPageEvent {
  FirstPageChangeEvent(Widget page) {
    currentIndex = 0;
    currentPage = page;
  }
}

class RebuildAppEvent extends RootPageEvent {}

class BottomNavigationBarTapEvent extends RootPageEvent {
  BottomNavigationBarTapEvent(int index) {
    currentIndex = index;
  }
}
