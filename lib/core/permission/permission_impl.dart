/*
import 'package:app_template/core/permission/i_permission.dart';
import 'package:permission_handler/permission_handler.dart';

class PermissionImpl implements IPermission {
  final PermissionHandler _permissionHandler;

  PermissionImpl(this._permissionHandler);

  @override
  Future<PermissionStatus> checkPermissionStatus() async {
    return await _permissionHandler.checkPermissionStatus(PermissionGroup.location);
  }

  @override
  Future requestLocationPermissionReturnsIsGranted() async {
    Map<PermissionGroup, PermissionStatus> groupAndStatus =
        await _permissionHandler.requestPermissions([PermissionGroup.location]);
    return groupAndStatus[PermissionGroup.location] == PermissionStatus.granted;
  }
}
*/
