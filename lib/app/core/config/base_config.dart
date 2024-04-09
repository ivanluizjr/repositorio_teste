abstract interface class IBaseConfig {
  String get apiHost;
  bool get useHttps;
  bool get trackEvents;
  bool get reportErrors;
}

class DevConfig implements IBaseConfig {
  @override
  String get apiHost => 'baseDev';

  @override
  bool get reportErrors => false;

  @override
  bool get trackEvents => false;

  @override
  bool get useHttps => false;
}

class ProdConfig implements IBaseConfig {
  @override
  String get apiHost => 'baseProd';

  @override
  bool get reportErrors => true;

  @override
  bool get trackEvents => true;

  @override
  bool get useHttps => true;
}
