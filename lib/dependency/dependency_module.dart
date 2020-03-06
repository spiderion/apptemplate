


import 'package:testtodelete/core/configuration/remote_configuration.dart';
import 'package:testtodelete/dependency/sub_modules/abr_sub_module.dart';
import 'package:testtodelete/dependency/sub_modules/bloc_sub_module.dart';
import 'package:testtodelete/dependency/sub_modules/core_dependency_sub_module.dart';
import 'package:testtodelete/dependency/sub_modules/data_holder_sub_module.dart';
import 'package:testtodelete/dependency/sub_modules/data_path_sub_module.dart';
import 'package:testtodelete/dependency/sub_modules/ebr_sub_module.dart';
import 'package:testtodelete/dependency/sub_modules/error_state_resolver_sub_module.dart';
import 'package:testtodelete/dependency/sub_modules/exception_captor_sub_module.dart';
import 'package:testtodelete/dependency/sub_modules/facade_sub_module.dart';
import 'package:testtodelete/dependency/sub_modules/factory_sub_module.dart';
import 'package:testtodelete/dependency/sub_modules/i_sub_module.dart';
import 'package:testtodelete/dependency/sub_modules/locale_sub_module.dart';
import 'package:testtodelete/dependency/sub_modules/repository_sub_module.dart';
import 'package:testtodelete/dependency/sub_modules/section_sub_module.dart';
import 'package:testtodelete/dependency/sub_modules/service_sub_module.dart';
import 'package:testtodelete/dependency/sub_modules/use_case_sub_module.dart';
import 'package:testtodelete/dependency/sub_modules/util_sub_module.dart';
import 'package:testtodelete/dependency/sub_modules/value_notifier_sub_module.dart';

///CRUCIAL IMPORTANCE THIS CLASS MUST BE INITIALIZED IN MAIN ONLY ONE TIME
///if you need any object use [DProvider] which has access to this [subModules]
class DependencyModule {
  final List<ISubModule> subModules = [];

  DependencyModule(RemoteConfiguration remoteConfiguration) {
    subModules.addAll([
      CoreDependencySubModule(remoteConfiguration),
      ErrorStateResolverSubModule(),
      EBRSubModule(),
      ABRSubModule(),
      FacadeSubModule(),
      ExceptionCaptorSubModule(),
      AbrSubModule(),
      DataHolderSubModule(),
      DataPathSubModule(),
      ServiceSubModule(),
      RepositorySubModule(),
      UseCaseSubModule(),
      BlocSubModule(),
      FactorySubModule(),
      LocaleSubModule(),
      SectionSubModule(),
      ValueNotifierSubModule()
    ]);

    subModules.forEach((subModule) => subModule.setSubModules(subModules));
  }
}
