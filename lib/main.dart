import 'package:flutter/material.dart';
import 'package:pokemon_app/screens/screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      initialRoute: '/homepokemon',
      routes: {
        '/listpokemon1': (BuildContext context) => const Listview1pokemonScreen(),
        '/listpokemon2': (BuildContext context) => const Listview2pokemonScreen(),
        '/alertpokemon': (BuildContext context) => const AlertpokemonScreen(),
        '/cardpokemon': (BuildContext context) => const CardpokemonScreen(),
        '/homepokemon': (BuildContext context) => const HomepokemonScreen(),
      },
      onGenerateRoute: (settings) =>
      MaterialPageRoute(
        builder: (BuildContext context) => AlertpokemonScreen()
      )
    );
  }
}
