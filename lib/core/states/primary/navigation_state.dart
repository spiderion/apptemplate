import 'package:apptemplate/core/states/primary/base_bloc_primary_state.dart';
import 'package:apptemplate/dependency/dependency_provider.dart';
import 'package:apptemplate/features/root/root_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NavigateToRootPageWithReplacementState extends BaseBlocPrimaryState {
  @override
  call(param) {
    if (param is BuildContext) {
      var provider = DProvider.of(param);
      Navigator.of(param).pushReplacement(MaterialPageRoute(
          builder: (context) =>
              RootPage(() => provider.blocSubModule.rootBloc, provider.sectionSubModule.sections)));
    }
  }
}
