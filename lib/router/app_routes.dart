import 'package:flutter/material.dart';
import 'package:pokemon_app/models/models.dart';
import 'package:pokemon_app/screens/screen.dart';

class AppRoutes {
  static final AppRoutes _instance = AppRoutes._singleton();
  final initialRoutes = '/homepokemon';
  static final IconData icon = Icons.catching_pokemon;
  final List<MenuOption> menuOptions = [
    MenuOption(
      route: '/listpokemon1',
      icon: Icon(icon),
      nombre: 'List Pokemon 1',
      screen: Listview1pokemonScreen()
    ),
    MenuOption(
      route: '/listpokemon2',
      icon: Icon(icon),
      nombre: 'List Pokemon 2',
      screen: Listview2pokemonScreen()
    ),
    MenuOption(
      route: '/alertpokemon',
      icon: Icon(icon),
      nombre: 'Alert Pokemon',
      screen: AlertpokemonScreen()
    ),
    MenuOption(
      route: '/cardpokemon',
      icon: Icon(icon),
      nombre: 'Card pokemon',
      screen: CardpokemonScreen()
    ),
    MenuOption(
      route: '/homepokemon',
      icon: Icon(icon),
      nombre: 'Home pokemon',
      screen: HomepokemonScreen()
    ),
    MenuOption(
      route: '/avatarpokemon',
      icon: Icon(icon),
      nombre: 'Avatar pokemon',
      screen: AvatarPokemonScreen()
    ),
    MenuOption(
      route: '/animatedpokemon',
      icon: Icon(icon),
      nombre: 'Animated pokemon',
      screen: AnimatedpokemonScreen()
    ),
    MenuOption(
      route: '/inputpokemon',
      icon: Icon(icon),
      nombre: 'Input pokemon',
      screen: InputpokemonScreen()
    ),
  ];

  AppRoutes._singleton();

  factory AppRoutes() => _instance;

  Map<String, Widget Function(BuildContext)> generateRoutes() {
    // Inicializamos el mapa para que podamos aplicar en el bucle addAll.
    Map<String, Widget Function(BuildContext)> routes = {};

    // Bucle de MenuOptions, no se puede cambiar option durante la ejecución
    for(final option in menuOptions) {
      routes.addAll({option.route: (BuildContext context) => option.screen});
    }

    // Devolemos routes
    return routes;
  }

  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
        builder: (BuildContext context) => AlertpokemonScreen()
      );
  }
}
