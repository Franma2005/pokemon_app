import 'package:flutter/material.dart';

class AnimatedpokemonScreen extends StatefulWidget {
   
  const AnimatedpokemonScreen({super.key});

  @override
  State<AnimatedpokemonScreen> createState() => _AnimatedpokemonScreenState();
}

class _AnimatedpokemonScreenState extends State<AnimatedpokemonScreen> {

  final double _width = 50;
  final double _heigth = 50;
  final Color _color = Colors.redAccent;
  final BorderRadiusGeometry _borderRadius = BorderRadius.circular(10);

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