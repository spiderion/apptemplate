import 'package:apptemplate/core/locale/translations.dart';
import 'package:flutter/material.dart';

import '../section.dart';

class SectionTwoPageProvider extends Section {
  @override
  _SectionTwoPageProviderState createState() => _SectionTwoPageProviderState();

  @override
  BottomNavigationBarItem createBottomNavigationBarItem(BuildContext context) => BottomNavigationBarItem(
      title: Text(Translations.of(context).text('page_two')), icon: Icon(Icons.monetization_on));
}

class _SectionTwoPageProviderState extends State<SectionTwoPageProvider> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("SectionTwoPage"), //AnyPage(() => DProvider.of(context).blocSubModule.anyBloc);
    );
  }
}
