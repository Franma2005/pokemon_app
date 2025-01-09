import 'package:flutter/material.dart';
import 'package:pokemon_app/router/app_routes.dart';
import 'package:pokemon_app/theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {

  static final AppRoutes appRoutes = AppRoutes(); 
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      initialRoute: appRoutes.initialRoutes,
      routes: appRoutes.generateRoutes(),
      onGenerateRoute: appRoutes.onGenerateRoute,
      theme: AppTheme.darkTheme,
    );
  }
}
