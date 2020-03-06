import 'package:testtodelete/dependency/sub_modules/i_sub_module.dart';

/// This submodule is a place where to store the runtime data as long as the app is alive
class DataHolderSubModule implements ISubModule {
  List<dynamic> objects = [];

  @override
  setSubModules(List<ISubModule> subModules) {}
}
