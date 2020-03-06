import 'package:apptemplate/core/business_rules/abr.dart';
import 'package:apptemplate/core/business_rules/app_version_checker_abr.dart';
import 'package:apptemplate/dependency/sub_modules/abr_sub_module.dart';
import 'package:apptemplate/dependency/sub_modules/bloc_sub_module.dart';
import 'package:apptemplate/dependency/sub_modules/i_sub_module.dart';
import 'package:apptemplate/dependency/sub_modules/section_sub_module.dart';
import 'package:apptemplate/dependency/sub_modules/value_notifier_sub_module.dart';
import 'package:apptemplate/features/app_upgrade/app_upgrade_page.dart';
import 'package:apptemplate/features/login/login_page.dart';
import 'package:apptemplate/features/root/root_page.dart';
import 'package:apptemplate/models/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FirstPageLauncherABR implements ABR {
  final List<ISubModule> _subModuleList;

  FirstPageLauncherABR(this._subModuleList);

  Future<Widget> decideFirstScreen() async {
    if (!(await _isCurrentVersionAllowed())) {
      return AppUpgradePage();
    }
    User user = await _fetchUser();
    if (user != null) {
      _subModuleList.whereType<ValueNotifierSubModule>().first.userFullDataNotifier.register();
      var sections = _subModuleList.whereType<SectionSubModule>().first.sections;
      var rootBloc = _subModuleList.whereType<BlocSubModule>().first.rootBloc;
      return RootPage(() => rootBloc, sections);
    }
    return Scaffold(body: getLogInPage());
  }

  Future<bool> _isCurrentVersionAllowed() async {
    AppVersionCheckerABR appVersionChecker =
        _subModuleList.whereType<ABRSubModule>().first.appVersionCheckerABR;
    return await appVersionChecker.isVersionAllowed();
  }

  Future<User> _fetchUser() async {
    return null;
    /* var retrieveUserDataUseCase = _subModuleList
        .whereType<UseCaseSubModule>()
        .first
        .retrieveUserDataUseCase;
    var either = await retrieveUserDataUseCase.fetchUserPrivateData(RequestFetchUserPrivateData());
    return either is ResultUserDataRetrieved ? either.userPrivateOrPublic : null;*/
  }

  Widget getLogInPage() {
    return LogInPage(() => _subModuleList.whereType<BlocSubModule>().first.logInBloc);
  }
}
