import 'package:flutter/material.dart';
import 'package:pokemon_app/screens/screen.dart';

class AppRoutes {
  static final AppRoutes _instance = AppRoutes._singleton();
  final initialRoutes = '/homepokemon';
  final Map<String, Widget Function(BuildContext)> routes = {
    '/listpokemon1': (BuildContext context) => const Listview1pokemonScreen(),
    '/listpokemon2': (BuildContext context) => const Listview2pokemonScreen(),
    '/alertpokemon': (BuildContext context) => const AlertpokemonScreen(),
    '/cardpokemon': (BuildContext context) => const CardpokemonScreen(),
    '/homepokemon': (BuildContext context) => const HomepokemonScreen(),
  };

  AppRoutes._singleton();

  factory AppRoutes() => _instance;

  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
        builder: (BuildContext context) => AlertpokemonScreen()
      );
  }
}
