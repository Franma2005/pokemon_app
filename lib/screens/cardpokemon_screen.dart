import 'package:flutter/material.dart';

class CardpokemonScreen extends StatelessWidget {
   
  const CardpokemonScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Card Pokemon')
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: const[
          CustomPokemonCardTipo1()
        ],
      )
    );
  }
}

class CustomPokemonCardTipo1 extends StatelessWidget {
  const CustomPokemonCardTipo1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.catching_pokemon_outlined),
            title: Text('Pokemon'),
            subtitle: Text('Ullamco et ullamco culpa sint eiusmod eiusmod adipisicing velit id tempor mollit sit sit adipisicing. Eu labore labore do aliqua ex laborum cupidatat fugiat culpa ea ullamco. Consequat laborum labore nisi eu aute reprehenderit excepteur sunt ut dolore in. Labore consectetur laborum minim sit amet. Elit ad velit est ut fugiat ipsum non ad sit id occaecat id. Nulla est ipsum incididunt sit consequat ad sint.'),
          )
        ],
      ),
    );
  }
}