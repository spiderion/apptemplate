
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testtodelete/core/locale/translations.dart';
import 'package:testtodelete/features/tab_sections/section.dart';
import 'package:testtodelete/features/tab_sections/section_one_page_provider/section_one_bloc.dart';

class SectionOnePageProvider extends Section {
  final SectionOneBloc _unstableBloc;

  SectionOnePageProvider(this._unstableBloc);

  @override
  _SectionOnePageProviderState createState() => _SectionOnePageProviderState();

  @override
  BottomNavigationBarItem createBottomNavigationBarItem(BuildContext context) => BottomNavigationBarItem(
      title: Text(Translations.of(context).text('my_stories')), icon: Icon(Icons.favorite_border));
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
