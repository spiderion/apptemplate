import 'package:testtodelete/dependency/sub_modules/i_sub_module.dart';

class DataPathSubModule implements ISubModule {
  List<ISubModule> _subModules;

  @override
  setSubModules(List<ISubModule> subModules) {
    _subModules = subModules;
  }
}
