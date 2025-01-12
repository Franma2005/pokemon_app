import 'package:flutter/material.dart';

class AnimatedpokemonScreen extends StatefulWidget {
   
  const AnimatedpokemonScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedpokemonScreen> createState() => _AnimatedpokemonScreenState();
}

class _AnimatedpokemonScreenState extends State<AnimatedpokemonScreen> {

  double _width = 50;
  double _heigth = 50;
  Color _color = Colors.redAccent;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(10);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Animated Pokemon'),
        )
      ),
      body: Center(
        child: Container(
        height: _heigth,
        width: _width,
        decoration: BoxDecoration(
          borderRadius: _borderRadius,
          color: _color,
        ),
      ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          
        },
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}