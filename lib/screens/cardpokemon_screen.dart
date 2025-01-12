import 'package:flutter/material.dart';
import 'package:pokemon_app/widgets/widgets.dart';

class CardpokemonScreen extends StatelessWidget {
   
  const CardpokemonScreen({super.key});
  
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
          SizedBox(height: 10),
          CustomPokemonCardTipo2(imageUrl: 'https://wallpapers.com/images/hd/orange-charmander-fanart-br63v4dqv2vaeqky.jpg', text: 'Este inicial es charmander'),
          SizedBox(height: 10),
          CustomPokemonCardTipo2(imageUrl: 'https://images2.alphacoders.com/135/1351279.png', text: 'Este inicial es bulbasur'),
          SizedBox(height: 10),
          CustomPokemonCardTipo2(imageUrl: 'https://images.alphacoders.com/135/1357289.png'),
          SizedBox(height: 10),
          CustomPokemonCardTipo2(imageUrl: 'https://wallpapers-clan.com/wp-content/uploads/2024/04/pokemon-gengar-aesthetic-desktop-wallpaper-cover.jpg', text: 'Este inicial es Gengar'),
        ],
      )
    );
  }
}

