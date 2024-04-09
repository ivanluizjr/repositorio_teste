import 'package:flutter_modular/flutter_modular.dart';
import 'package:standard_mobile_project/app/core/routes/app_routes.dart';
import 'package:standard_mobile_project/app/modules/example_module_clean_arch_v2/ui/pages/example_page.dart';

class ExampleModule extends Module {
  @override
  void binds(Injector i) {}

  @override
  void routes(RouteManager r) {
    r.child(
      AppRoutes.initialRoute,
      child: (context) => const ExamplePage(),
    );
  }
}
