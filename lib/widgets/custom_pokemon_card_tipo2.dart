import 'package:flutter/material.dart';

class CustomPokemonCardTipo2 extends StatelessWidget {
   
  const CustomPokemonCardTipo2({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
          children: [
            FadeInImage(
              image: NetworkImage('https://i.pinimg.com/originals/81/68/c8/8168c8b3dbc41415bdd2efcfe7a0894c.jpg'),
              placeholder: AssetImage('assets/jar-loading.gif'),
              width: 260,
            )
          ],
        ),
      );
  }
}