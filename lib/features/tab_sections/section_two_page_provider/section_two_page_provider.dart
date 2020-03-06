import 'package:flutter/material.dart';
import 'package:apptemplate/core/locale/translations.dart';

import '../section.dart';

class SectionTwoPageProvider extends Section {
  @override
  _SectionTwoPageProviderState createState() => _SectionTwoPageProviderState();

  @override
  BottomNavigationBarItem createBottomNavigationBarItem(BuildContext context) =>
      BottomNavigationBarItem(title: Text(Translations.of(context).text('map')), icon: Icon(Icons.map));
}

class _SectionTwoPageProviderState extends State<SectionTwoPageProvider> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("SectionTwoPage"),
    ); //MapPage(() => DProvider.of(context).blocSubModule.mapBloc);
  }
}
