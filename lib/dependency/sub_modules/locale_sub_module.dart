import 'dart:ui';

import 'package:apptemplate/core/locale/translations_delegate.dart';
import 'package:apptemplate/dependency/sub_modules/i_sub_module.dart';

class LocaleSubModule implements ISubModule {
  List<ISubModule> _subModules;

  @override
  setSubModules(List<ISubModule> subModules) {
    _subModules = subModules;
  }

  List<Locale> get supportedLocales => <Locale>[const Locale('en') /*, const Locale('it')*/];

  TranslationsDelegate get translationDelegate => const TranslationsDelegate();
}
