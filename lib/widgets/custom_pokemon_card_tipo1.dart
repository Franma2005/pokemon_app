import 'package:flutter/material.dart';

class CustomPokemonCardTipo1 extends StatelessWidget {
  const CustomPokemonCardTipo1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.catching_pokemon_outlined),
            title: Text('Bulbasur'),
            subtitle: Text('Ullamco et ullamco culpa sint eiusmod eiusmod adipisicing velit id tempor mollit sit sit adipisicing. Eu labore labore do aliqua ex laborum cupidatat fugiat culpa ea ullamco. Consequat laborum labore nisi eu aute reprehenderit excepteur sunt ut dolore in. Labore consectetur laborum minim sit amet. Elit ad velit est ut fugiat ipsum non ad sit id occaecat id. Nulla est ipsum incididunt sit consequat ad sint.'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
            
                  },
                  child: const Text('Cancelar'),
                ),
                TextButton(
                  onPressed: () {
            
                  },
                  child: const Text('Elegir Pokemon'),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}