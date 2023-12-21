import 'package:flutter/foundation.dart';
import 'package:gen/gen.dart';

//app enviromen manager class
final class AppEnvironment {
  //setup
  AppEnvironment.setup({required AppConfiguration config}) {
    _config = config;
  }

  //General app env setup
  AppEnvironment.general() {
    _config = kDebugMode ? DevEnv() : ProdEnv();
  }

  static late final AppConfiguration _config;
}

//get app environemt istem
enum AppEnvironemntItems {
  //Network base url
  baseUrl,
  //google maps api key
  apiKey;

  String get value {
    try {
      switch (this) {
        case AppEnvironemntItems.baseUrl:
          return AppEnvironment._config.baseUrl;
        case AppEnvironemntItems.apiKey:
          return AppEnvironment._config.apiKey;
      }
    } catch (e) {
      throw Exception('AppEnvironment is not initialized');
    }
  }
}
