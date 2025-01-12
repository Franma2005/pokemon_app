import 'package:flutter/material.dart';

class CustomPokemonCardTipo2 extends StatelessWidget {
  final String imageUrl;
  final String? text;
  const CustomPokemonCardTipo2({super.key, required this.imageUrl, this.text});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage(
               imageUrl    
            ),
            placeholder: const AssetImage('assets/jar-loading.gif'),
            width: double.infinity,
            height: 260,
            fit: BoxFit.cover,
            fadeInDuration: Duration(milliseconds: 300),
          ),
          if(text == null) 
          Container(
              padding: EdgeInsets.only(top: 10, bottom: 10, right: 20),
              alignment: AlignmentDirectional.centerEnd,
              child: Text(text ?? ''))
        ],
      ),
    );
  }
}
