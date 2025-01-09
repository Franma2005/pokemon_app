import 'package:flutter/material.dart';
import 'package:pokemon_app/widgets/widgets.dart';

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
          CustomPokemonCardTipo1(),
          CustomPokemonCardTipo2(),
        ],
      )
    );
  }
}

