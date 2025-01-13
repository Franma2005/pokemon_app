import 'package:flutter/material.dart';

class SliderpokemonScreen extends StatelessWidget {
   
  const SliderpokemonScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Slider & Checks Pokemon'),
        ),
      ),
      body: Column(
        children: [
          Slider(
            min: 50,
            max: 400,
            value: 100,
            onChanged: (value) {

            }
          )
        ],
      ),
    );
  }
}