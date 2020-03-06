import 'package:apptemplate/core/notifiers/user_full_data_notifier.dart';
import 'package:apptemplate/dependency/sub_modules/i_sub_module.dart';
import 'package:apptemplate/dependency/sub_modules/use_case_sub_module.dart';

class ValueNotifierSubModule implements ISubModule {
  UseCaseSubModule _useCaseSubModule;
  UserFullDataNotifier _userFullDataNotifier;

  @override
  setSubModules(List<ISubModule> subModules) {
    _useCaseSubModule = subModules.singleWhere((element) => element is UseCaseSubModule);
  }

  UserFullDataNotifier get userFullDataNotifier => _userFullDataNotifier;
}
