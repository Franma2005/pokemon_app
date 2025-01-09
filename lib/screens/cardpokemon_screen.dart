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
      body: Center(
         child: Text('CardpokemonScreen'),
      ),
    );
  }
}