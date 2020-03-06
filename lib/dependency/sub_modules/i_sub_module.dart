abstract class ISubModule {
  ///This method provides submodules with dependencies
  /// to the rest of the dependencies
  setSubModules(List<ISubModule> subModules);
}

///Instructions to create [ISubModule]
/// 1) Create a class that extends [ISubModule]
/// 2) Leave Default constructor with no parameters
/// 3) use [setSubModules] method to retrieve all the subModules which contains all
/// the required dependencies that might be required by your subModel
/// 4) Add the created subModule to the [DependencyModule] [subModule list]
