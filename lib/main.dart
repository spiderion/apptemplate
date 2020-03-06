import 'package:apptemplate/core/business_rules/first_page_launcher_abr.dart';
import 'package:apptemplate/dependency/dependency_module.dart';
import 'package:apptemplate/dependency/sub_modules/abr_sub_module.dart';
import 'package:apptemplate/dependency/sub_modules/i_sub_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'core/loaders/loader.dart';
import 'dependency/dependency_provider.dart';
import 'dependency/sub_modules/locale_sub_module.dart';
import 'ui_design/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //var activatedRemoteConfig = await FirebaseRemoteConfigImpl.getActivatedRemoteConfig(RemoteConfig.instance);
  //FirebaseRemoteConfigImpl remoteConfigImpl = null;//FirebaseRemoteConfigImpl(activatedRemoteConfig);
  runApp(MyApp(DependencyModule(null).subModules));
}

class MyApp extends StatefulWidget {
  final List<ISubModule> _subModuleList;

  const MyApp(this._subModuleList, {Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return DProvider(
      widget._subModuleList,
      child: MaterialApp(
        theme: appTheme,
        title: 'apptemplate',
        home: FutureBuilder(
            future: getPageLauncher().decideFirstScreen(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return snapshot.data;
              } else if (snapshot.hasError) {
                return getPageLauncher().getLogInPage();
              } else {
                return Scaffold(
                  body: Center(
                    child: Loader(),
                  ),
                );
              }
            }),
        localizationsDelegates: [
          widget._subModuleList.whereType<LocaleSubModule>().first.translationDelegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate
        ],
        supportedLocales: widget._subModuleList.whereType<LocaleSubModule>().first.supportedLocales,
      ),
    );
  }

  FirstPageLauncherABR getPageLauncher() {
    return widget._subModuleList.whereType<ABRSubModule>().first.firstPageLauncherABR;
  }
}
