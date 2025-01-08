import 'package:flutter/material.dart';
import 'package:pokemon_app/router/app_routes.dart';

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
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.redAccent,

        // Personalización de los AppBar de la app
        appBarTheme: AppBarTheme(
          color: Colors.redAccent,
          elevation: 0,
        ),
      ),
    );
  }
}
