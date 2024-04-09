import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:standard_mobile_project/app/core/config/environment.dart';
import 'package:standard_mobile_project/app_module.dart';
import 'package:standard_mobile_project/app_widget.dart';

void main() {
  const String environment = String.fromEnvironment(
    'ENVIRONMENT',
    defaultValue: Environment.prod,
  );

  Environment().initiConfig(environment);

  runApp(
    ModularApp(
      module: AppModule(),
      child: const AppWidget(),
    ),
  );
}
