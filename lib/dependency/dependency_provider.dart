
import 'package:flutter/cupertino.dart';
import 'package:testtodelete/dependency/sub_modules/bloc_sub_module.dart';
import 'package:testtodelete/dependency/sub_modules/facade_sub_module.dart';
import 'package:testtodelete/dependency/sub_modules/i_sub_module.dart';
import 'package:testtodelete/dependency/sub_modules/section_sub_module.dart';
import 'package:testtodelete/dependency/sub_modules/use_case_sub_module.dart';

class DProvider extends InheritedWidget {
  final List<ISubModule> _subModuleList;

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;

  DProvider(this._subModuleList, {Widget child}) : super(child: child);

  static DProvider of(context) => context.inheritFromWidgetOfExactType(DProvider);

  ///Bloc SUBMODULE
  BlocSubModule get blocSubModule => _subModuleList.whereType<BlocSubModule>().first;

  ///UseCase SUBMODULE
  UseCaseSubModule get useCaseSubModule => _subModuleList.whereType<UseCaseSubModule>().first;

  ///Facade SUBMODULE
  FacadeSubModule get facadeSubModule => _subModuleList.whereType<FacadeSubModule>().first;

  ///List Sections SUBMODULE
  SectionSubModule get sectionSubModule => _subModuleList.whereType<SectionSubModule>().first;
}
