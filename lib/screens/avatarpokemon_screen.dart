import 'package:flutter/material.dart';

class AvatarPokemonScreen extends StatelessWidget {
   
  const AvatarPokemonScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Avatar Pokemon Screen'),
        ),
        actions: const[
          CircleAvatar(
            backgroundImage: AssetImage(
              'assets/creador-pokemon.jpg'
            ),
          )
        ],
      ),
      body: const Center(
        child: CircleAvatar(
        backgroundImage: NetworkImage(
          'https://i.pinimg.com/236x/6a/cd/49/6acd49821ef5a96bb911dd2d77248608.jpg'
        ),
        maxRadius: 120,
      ),
      ), 
    );
  }
}