

import 'package:testtodelete/core/configuration/remote_configuration.dart';
import 'package:testtodelete/dependency/sub_modules/core_dependency_sub_module.dart';
import 'package:testtodelete/dependency/sub_modules/i_sub_module.dart';

class ABRSubModule implements ISubModule {
  RemoteConfiguration _remoteConfiguration;
  List<ISubModule> _subModules;

  @override
  setSubModules(List<ISubModule> subModules) {
    _subModules = subModules;
    _remoteConfiguration = subModules.whereType<CoreDependencySubModule>().first.remoteConfiguration;
  }

/*  AppVersionCheckerABR get appVersionCheckerABR =>
      AppVersionCheckerABR(_remoteConfiguration, PackageInfo.fromPlatform());

  FirstPageLauncherABR get firstPageLauncherABR => FirstPageLauncherABR(_subModules);*/
}
