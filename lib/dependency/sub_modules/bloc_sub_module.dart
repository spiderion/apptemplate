import 'package:apptemplate/dependency/sub_modules/core_dependency_sub_module.dart';
import 'package:apptemplate/dependency/sub_modules/ebr_sub_module.dart';
import 'package:apptemplate/dependency/sub_modules/error_state_resolver_sub_module.dart';
import 'package:apptemplate/dependency/sub_modules/factory_sub_module.dart';
import 'package:apptemplate/dependency/sub_modules/i_sub_module.dart';
import 'package:apptemplate/dependency/sub_modules/use_case_sub_module.dart';
import 'package:apptemplate/dependency/sub_modules/util_sub_module.dart';
import 'package:apptemplate/dependency/sub_modules/value_notifier_sub_module.dart';
import 'package:apptemplate/features/login/log_in_bloc.dart';
import 'package:apptemplate/features/root/root_bloc.dart';
import 'package:apptemplate/features/tab_section/section_one_page_provider/section_one_bloc.dart';

class BlocSubModule implements ISubModule {
  UseCaseSubModule _useCaseSubModule;
  ErrorStateResolverSubModule _errorStateResolverSubModule;
  CoreDependencySubModule _coreDependencySubModule;
  AbrSubModule _abrSubModule;
  EBRSubModule _ebrSubModule;
  ValueNotifierSubModule _valueNotifierSubModule;
  FactorySubModule _factorySubModule;

  @override
  setSubModules(List<ISubModule> subModules) {
    _valueNotifierSubModule = subModules.singleWhere((element) => element is ValueNotifierSubModule);
    _useCaseSubModule = subModules.singleWhere((element) => element is UseCaseSubModule);
    _errorStateResolverSubModule =
        subModules.singleWhere((element) => element is ErrorStateResolverSubModule);
    _coreDependencySubModule = subModules.singleWhere((element) => element is CoreDependencySubModule);
    _abrSubModule = subModules.singleWhere((element) => element is AbrSubModule);
    _ebrSubModule = subModules.singleWhere((element) => element is EBRSubModule);
    _factorySubModule = subModules.singleWhere((element) => element is FactorySubModule);
  }

  LogInBloc get logInBloc {
    return LogInBloc();
  }

  SectionOneBloc get sectionOneBloc => SectionOneBloc();

  RootBloc get rootBloc => RootBloc();

/*  UserSettingsBloc get userSettingsBloc => UserSettingsBloc(
      _useCaseSubModule.loggingUseCase,
      _useCaseSubModule.updateUserDataUseCase,
      _useCaseSubModule.retrieveUserDataUseCase,
      _errorStateResolverSubModule.defaultErrorStateResolver,
      _coreDependencySubModule.pushNotificationManager(
          updateUserDataUseCase: _useCaseSubModule.updateUserDataUseCase));

  TermsAndConditionsBloc get termsAndConditionsBloc => TermsAndConditionsBloc();*/
}
