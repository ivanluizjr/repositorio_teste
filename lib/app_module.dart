import 'package:flutter_modular/flutter_modular.dart';
import 'package:standard_mobile_project/app/modules/example_module_clean_arch_v2/example_module.dart';

class AppModule extends Module {
  @override
  void routes(RouteManager r) {
    r.module(
      Modular.initialRoute,
      module: ExampleModule(),
    );
  }
}
