import 'package:flutter/material.dart';
import 'listview1pokemon_screen.dart';

class HomepokemonScreen extends StatelessWidget {
   
  const HomepokemonScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Home Pokemon Screen')),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => 
        ListTile(
          leading: Icon(Icons.catching_pokemon),
          title: Text('Pokemon de ejemplo'),
          onTap: () { Navigator.pushNamed(context, '/pokemonmentira'); },
        ),
        separatorBuilder: (context, index) => Divider(),
        itemCount: 5,
      )
      );
  }
}