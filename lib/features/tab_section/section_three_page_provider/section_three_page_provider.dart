import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:apptemplate/core/locale/translations.dart';

import '../section.dart';

class SectionThreePageProvider extends Section {
  @override
  _SectionThreePageProviderState createState() => _SectionThreePageProviderState();

  @override
  BottomNavigationBarItem createBottomNavigationBarItem(BuildContext context) => BottomNavigationBarItem(
      title: Text(Translations.of(context).text('page_three')), icon: Icon(Icons.settings));
}

class _SectionThreePageProviderState extends State<SectionThreePageProvider> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("SectionThreePage"),
    );
  }
}
