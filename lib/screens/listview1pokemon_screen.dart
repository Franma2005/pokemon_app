import 'package:flutter/material.dart';

class Listview1pokemonScreen extends StatelessWidget {
   
  const Listview1pokemonScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('Regiones Pokemon'))),
      body: Center(
         child: Text('Listview1pokemonScreen'),
      ),
    );
  }
}