import 'package:flutter/material.dart';

class SliderpokemonScreen extends StatefulWidget {
   
  const SliderpokemonScreen({super.key});

  @override
  State<SliderpokemonScreen> createState() => _SliderpokemonScreenState();
}

class _SliderpokemonScreenState extends State<SliderpokemonScreen> {
    double _sliderValue = 100;
    bool _sliderChecked = true;
    final bool _sliderEnable = true;

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
          Slider.adaptive(
            min: 50,
            max: 400,
            activeColor: Colors.redAccent,
            value: _sliderValue,
            onChanged: (value) {
              _sliderValue = value;
              setState(() {
                
              });
            }
          ),
          Checkbox(
            value: _sliderChecked,
            onChanged: _sliderEnable ? (value) {
              _sliderChecked = !_sliderChecked;
              setState(() {
                
              });
            }: null
          )
        ],
      ),
    );
  }
}