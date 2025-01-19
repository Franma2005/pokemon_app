import 'package:flutter/material.dart';

class ListviewpokemonBuilderScreen extends StatelessWidget {
   
  const ListviewpokemonBuilderScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
         child: ListView.builder(
           itemCount: 10,
           itemBuilder: (BuildContext context, int index) {
             return FadeInImage(
              width: double.infinity,
              height: 300,
              fit: BoxFit.cover,
              placeholder: AssetImage('assets/jar-loading.gif'),
              image: NetworkImage('https://picsum.photos/500/300?image=$index'),
            );
           },
         ),
      ),
    );
  }
}