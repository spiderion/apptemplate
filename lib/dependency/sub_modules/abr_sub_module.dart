import 'package:apptemplate/dependency/sub_modules/i_sub_module.dart';

class ABRSubModule implements ISubModule {
  List<ISubModule> _subModules;

  @override
  setSubModules(List<ISubModule> subModules) {
    _subModules = subModules;
  }

/*  AppVersionCheckerABR get appVersionCheckerABR =>
      AppVersionCheckerABR(_remoteConfiguration, PackageInfo.fromPlatform());

  FirstPageLauncherABR get firstPageLauncherABR => FirstPageLauncherABR(_subModules);*/
}
