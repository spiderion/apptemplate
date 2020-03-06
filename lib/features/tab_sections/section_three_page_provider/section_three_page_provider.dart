
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testtodelete/core/locale/translations.dart';
import 'package:testtodelete/features/tab_sections/section.dart';

class SectionThreePageProvider extends Section {
  @override
  _SectionThreePageProviderState createState() => _SectionThreePageProviderState();

  @override
  BottomNavigationBarItem createBottomNavigationBarItem(BuildContext context) => BottomNavigationBarItem(
      title: Text(Translations.of(context).text('profile')), icon: Icon(Icons.person));
}

class _SectionThreePageProviderState extends State<SectionThreePageProvider> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("SectionThreePage"),); //ProfilePage(() => DProvider.of(context).blocSubModule.profileBloc);
  }
}
