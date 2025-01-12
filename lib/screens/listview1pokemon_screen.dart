import 'package:flutter/material.dart';

class Listview1pokemonScreen extends StatelessWidget {

  final List<String> options = const['Kanto', 'Alola', 'Paldea', 'Kalo'];
   
  const Listview1pokemonScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Regiones Pokemon')
        )
      ),
      body: ListView(
        children: [
          //Los tres puntos se ponen porque ...options me devuelve un Iterable y hay que desestructurarlo para que flutter lo interprete.
          ...options.map((regiones) => 
          ListTile(
            trailing: Icon(Icons.catching_pokemon),
            title: Text(regiones)
          ),)
        ],
      ),
    );
  }
}