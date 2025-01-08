import 'package:flutter/material.dart';

class Listview2pokemonScreen extends StatelessWidget {

  final List<String> options = const['Kanto', 'Alola', 'Paldea', 'Kalo'];
   
  const Listview2pokemonScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        title: Center(
          child: Text('Regiones Pokemon')
        )
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => 
        ListTile(
          leading: const Icon(Icons.catching_pokemon),
          title: Text(options[index]),
          onTap: () {
            print(options[index]);
          }
        ),
        separatorBuilder: (context, index) => const Divider(),
        itemCount: options.length,
      )
    );
  }
}