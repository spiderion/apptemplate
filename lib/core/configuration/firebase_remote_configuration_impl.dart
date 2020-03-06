/*
import 'dart:async';

import 'package:app_template/core/configuration/remote_configuration.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';

class FirebaseRemoteConfigImpl implements RemoteConfiguration {
  RemoteConfig remoteConfig;

  FirebaseRemoteConfigImpl(this.remoteConfig);

  static Future<RemoteConfig> getActivatedRemoteConfig(Future<RemoteConfig> futureRemoteConfig) async {
    RemoteConfig result = await futureRemoteConfig;
    await result.fetch(expiration: const Duration(hours: 12));
    result.activateFetched();
    return result;
  }

  @override
  getString(String key) {
    return remoteConfig.getString(key);
  }
}
*/
