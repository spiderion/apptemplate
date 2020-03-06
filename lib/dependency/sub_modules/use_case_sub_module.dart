import 'package:apptemplate/dependency/sub_modules/abr_sub_module.dart';
import 'package:apptemplate/dependency/sub_modules/core_dependency_sub_module.dart';
import 'package:apptemplate/dependency/sub_modules/ebr_sub_module.dart';
import 'package:apptemplate/dependency/sub_modules/i_sub_module.dart';
import 'package:apptemplate/dependency/sub_modules/repository_sub_module.dart';
import 'package:apptemplate/dependency/sub_modules/value_notifier_sub_module.dart';

class UseCaseSubModule implements ISubModule {
  EBRSubModule _ebrSubModule;
  RepositorySubModule _repositorySubModule;
  ABRSubModule _abrSubModule;
  CoreDependencySubModule _coreDependencySubModule;
  ValueNotifierSubModule _valueNotifierSubModule;

  @override
  setSubModules(List<ISubModule> subModules) {
    _ebrSubModule = subModules.whereType<EBRSubModule>().first;
    _repositorySubModule = subModules.whereType<RepositorySubModule>().first;
    _abrSubModule = subModules.whereType<ABRSubModule>().first;
    _coreDependencySubModule = subModules.whereType<CoreDependencySubModule>().first;
    _valueNotifierSubModule = subModules.whereType<ValueNotifierSubModule>().first;
  }
}
