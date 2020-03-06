
import 'package:apptemplate/features/tab_section/section.dart';
import 'package:apptemplate/features/tab_section/section_one_page_provider/section_one_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:apptemplate/core/locale/translations.dart';

class SectionOnePageProvider extends Section {
  final SectionOneBloc _unstableBloc;

  SectionOnePageProvider(this._unstableBloc);

  @override
  _SectionOnePageProviderState createState() => _SectionOnePageProviderState();

  @override
  BottomNavigationBarItem createBottomNavigationBarItem(BuildContext context) => BottomNavigationBarItem(
      title: Text(Translations.of(context).text('page_one')), icon: Icon(Icons.home));
}

class _SectionOnePageProviderState extends State<SectionOnePageProvider> {
  SectionOneBloc _bloc;

  @override
  void initState() {
    _bloc = widget._unstableBloc;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(child: Text("SectionOnePage"));
  }

  @override
  void dispose() {
    _bloc.dispose();
    super.dispose();
  }
}
