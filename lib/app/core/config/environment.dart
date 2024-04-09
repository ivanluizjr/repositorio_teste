import 'package:standard_mobile_project/app/core/config/base_config.dart';

class Environment {
  factory Environment() {
    return _singleton;
  }

  Environment._internal();

  static final Environment _singleton = Environment._internal();

  static const String dev = 'DEV';
  static const String prod = 'PROD';

  late IBaseConfig config;

  initiConfig(String environment) {
    config = _getConfig(environment);
  }

  IBaseConfig _getConfig(String environment) {
    return switch (environment) {
      Environment.prod => ProdConfig(),
      Environment.dev => DevConfig(),
      _ => ProdConfig(),
    };
  }
}
