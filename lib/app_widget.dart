import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({super.key});

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.light,
        statusBarColor: Colors.blue,
        systemNavigationBarColor: Colors.blue,
        systemNavigationBarContrastEnforced: true,
        systemNavigationBarDividerColor: Colors.blue,
        systemNavigationBarIconBrightness: Brightness.light,
        systemStatusBarContrastEnforced: true,
      ),
    );

    return MaterialApp.router(
      routerConfig: Modular.routerConfig,
      //theme: themeData, Passar um teme data
      debugShowCheckedModeBanner: false,
    );
  }
}
