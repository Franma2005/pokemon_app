import 'package:flutter/material.dart';

class AlertpokemonScreen extends StatelessWidget {
   
  const AlertpokemonScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
         child: Text('AlertPokemonScreen'),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        onPressed: () => Navigator.pop(context)
      ),
    );
  }
}