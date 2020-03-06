import 'package:apptemplate/core/configuration/remote_configuration.dart';
import 'package:package_info/package_info.dart';

class AppVersionCheckerABR {
  static const APP_VERSION_MIN_ALLOWED_KEY = "APP_VERSION_MIN_ALLOWED";

  final RemoteConfiguration _remoteConfiguration;
  final Future<PackageInfo> packageInfo;

  AppVersionCheckerABR(this._remoteConfiguration, this.packageInfo);

  Future<bool> isVersionAllowed() async {
    // todo
    return true;
    String minAllowedVersionText = _remoteConfiguration.getString(APP_VERSION_MIN_ALLOWED_KEY);
    PackageInfo currentVersionData = await packageInfo;
    int currentVersion = _transformStringVersionToInt(currentVersionData.version);
    int minAllowedVersion = _transformStringVersionToInt(minAllowedVersionText);
    return currentVersion >= minAllowedVersion;
  }

  int _transformStringVersionToInt(String text) {
    if (text == null || text.isEmpty) return 1;
    String noDotsText = text.trim().replaceAll(".", "");
    return int.parse(noDotsText);
  }
}
