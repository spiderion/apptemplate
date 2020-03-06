import 'package:testtodelete/dependency/sub_modules/i_sub_module.dart';
import 'package:testtodelete/dependency/sub_modules/use_case_sub_module.dart';

class FacadeSubModule implements ISubModule {
  UseCaseSubModule _useCaseSubModule;

  @override
  setSubModules(List<ISubModule> subModules) {
    _useCaseSubModule = subModules.whereType<UseCaseSubModule>().first;
  }
}
