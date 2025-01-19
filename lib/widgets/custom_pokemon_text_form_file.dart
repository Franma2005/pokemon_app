import 'package:flutter/material.dart';

class CustomPokemonTextFormFile extends StatelessWidget {

  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;
  final TextInputType? keyboardType;
  final bool obscureText;

  final String formProperty;
  final Map<String, String> formTrainerValues;

  const CustomPokemonTextFormFile({
    super.key, this.hintText, this.labelText, this.helperText, this.icon, this.suffixIcon, this.keyboardType, required this.obscureText, required this.formProperty, required this.formTrainerValues
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      keyboardType: keyboardType,
      obscureText: obscureText,
      //initialValue: 'Entrenado Pokemon',
      textCapitalization: TextCapitalization.words,
      onChanged: (String value) => formTrainerValues[formProperty] = value,
      validator: (String? value) {
        if(value!.length < 3) return 'Mínimo 3 caracteres';
        return null;
      },
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        suffixIcon: Icon(suffixIcon),
        icon: Icon(icon),
        /*border: OutlineInputBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            topRight: Radius.circular(10)
          )
        )*/
      ),
    );
  }
}