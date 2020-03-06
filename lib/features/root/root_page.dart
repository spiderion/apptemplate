import 'package:apptemplate/core/base_page/base_page_components.dart';
import 'package:apptemplate/features/root/root_bloc.dart';
import 'package:apptemplate/features/root/root_event.dart';
import 'package:apptemplate/features/tab_section/section.dart';
import 'package:flutter/material.dart';

class RootPage extends BaseWidget {
  final List<Section> _unstableSections;

  RootPage(Function getBloc, this._unstableSections) : super(getBloc);

  @override
  State<StatefulWidget> createState() {
    return _RootState();
  }
}

class _RootState extends BaseState<RootPage, RootBloc> {
  List<Section> _sections;

  @override
  void initState() {
    _sections = widget._unstableSections;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: bloc?.streamCurrentIndex,
      initialData: 0,

      /// first page to show
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          return _scaffold(context, snapshot.data);
        } else {
          return Container(
            child: Text('no data'),
          );
        }
      },
    );
  }

  Widget _scaffold(BuildContext context, int index) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: IndexedStack(
        index: index,
        children: _sections,
      ),
      bottomNavigationBar: _bottomNavigationBar(index),
    );
  }

  Widget _bottomNavigationBar(int currentIndex) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      type: BottomNavigationBarType.fixed,
      items: _sections.map((section) => section.createBottomNavigationBarItem(context)).toList(),
      onTap: (int index) => bloc.event.add(BottomNavigationBarTapEvent(index)),
    );
  }
}
