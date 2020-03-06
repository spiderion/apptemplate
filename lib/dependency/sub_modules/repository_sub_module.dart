import 'package:apptemplate/dependency/sub_modules/core_dependency_sub_module.dart';
import 'package:apptemplate/dependency/sub_modules/data_holder_sub_module.dart';
import 'package:apptemplate/dependency/sub_modules/exception_captor_sub_module.dart';
import 'package:apptemplate/dependency/sub_modules/i_sub_module.dart';
import 'package:apptemplate/dependency/sub_modules/service_sub_module.dart';

class RepositorySubModule implements ISubModule {
  CoreDependencySubModule _coreDependencySubModule;
  ServiceSubModule _serviceSubModule;
  DataHolderSubModule _dataHolderSubModule;
  ExceptionCaptorSubModule _exceptionCaptorSubModule;

  void setSubModules(List<ISubModule> subModules) {
    _coreDependencySubModule = subModules.whereType<CoreDependencySubModule>().first;
    _serviceSubModule = subModules.whereType<ServiceSubModule>().first;
    _dataHolderSubModule = subModules.whereType<DataHolderSubModule>().first;
    _exceptionCaptorSubModule = subModules.whereType<ExceptionCaptorSubModule>().first;
  }
}
