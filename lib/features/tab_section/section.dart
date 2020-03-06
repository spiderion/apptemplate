import 'package:flutter/cupertino.dart';

/// A section holds the logic of what page to show in
/// a specific section of the bottom tab in the root page
abstract class Section extends StatefulWidget {
  BottomNavigationBarItem createBottomNavigationBarItem(BuildContext context);
}
