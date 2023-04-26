import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:tut/presentation/resorces/routes_manager.dart';

import '../presentation/resorces/theme_manager.dart';

class MyApp extends StatefulWidget {
  // const MyApp({super.key});//defult constractor

  int x = 0;
  MyApp._internal();

  static final MyApp _instance = MyApp._internal();

  factory MyApp() => _instance;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute : RouteGenerator.getRoutes ,
      initialRoute: Routes.splashRoute,
      theme: getApplicationTheme(),
    );
  }
}
