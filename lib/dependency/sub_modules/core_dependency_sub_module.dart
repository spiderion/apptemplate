
import 'package:testtodelete/core/configuration/remote_configuration.dart';
import 'package:testtodelete/data/dao.dart';
import 'package:testtodelete/dependency/sub_modules/i_sub_module.dart';

class CoreDependencySubModule implements ISubModule {
  Dao database;
  RemoteConfiguration remoteConfiguration;

  CoreDependencySubModule(this.remoteConfiguration) {
    /// init your libraries here (single time init)
    //Firestore.instance.settings(persistenceEnabled: true);
    database = null; // FireStoreDataBaseImpl(Firestore.instance);
  }

  // Authentication get authentication => null; //Authentication(FirebaseAuth.instance);

  //Analytics get analytics => AnalyticsImpl(FirebaseAnalytics());

  // IPermission get permission => PermissionImpl(PermissionHandler());

  //IdGenerator get idGenerator => IdGeneratorImpl(Uuid());

  @override
  setSubModules(List<ISubModule> subModules) {}
}
