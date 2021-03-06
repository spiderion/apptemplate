import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class Translations {
  Map<dynamic, dynamic> localizedValues;

  Translations({@required this.localizedValues});

  static Translations of(BuildContext context) {
    return Localizations.of(context, Translations);
  }

  static Future<Translations> load(Locale locale) async {
    String jsonContent = await rootBundle.loadString("assets/locale/i18n_${locale.languageCode}.json");
    return Translations(localizedValues: json.decode(jsonContent));
  }

  static Future<Translations> loadTest() async {
    Map<dynamic, dynamic> sdf = {"test": "test"};
    return Translations(localizedValues: sdf);
  }

  String text(String key) => localizedValues[key] ?? key + " not found";
}
