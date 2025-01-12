import 'package:flutter/material.dart';
import 'package:pokemon_app/widgets/widgets.dart';

class AlertpokemonScreen extends StatelessWidget {
   
  const AlertpokemonScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
         child: CustomPokemonElevatedButton(),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        onPressed: () => Navigator.pop(context)
      ),
    );
  }
}

