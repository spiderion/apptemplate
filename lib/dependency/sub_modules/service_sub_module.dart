
import 'package:testtodelete/dependency/sub_modules/core_dependency_sub_module.dart';
import 'package:testtodelete/dependency/sub_modules/data_path_sub_module.dart';
import 'package:testtodelete/dependency/sub_modules/i_sub_module.dart';


class ServiceSubModule implements ISubModule {
  CoreDependencySubModule _coreDependencySubModule;
  DataPathSubModule _dataPathSubModule;

  @override
  setSubModules(List<ISubModule> subModules) {
    _coreDependencySubModule = subModules.whereType<CoreDependencySubModule>().first;
    _dataPathSubModule = subModules.whereType<DataPathSubModule>().first;
  }

/*  RegistrationService get registrationService =>
      RegistrationServiceImpl(_coreDependencySubModule.authentication, _coreDependencySubModule.database);*/

 // LoggingService get loggingService => LoggingServiceImpl(_coreDependencySubModule.authentication);

}
