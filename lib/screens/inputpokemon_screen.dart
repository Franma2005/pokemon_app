import 'package:flutter/material.dart';
import 'package:pokemon_app/widgets/widgets.dart';

class InputpokemonScreen extends StatelessWidget {
   
  const InputpokemonScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Input And Form Pokemon'),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            CustomPokemonTextFormFile(
              hintText: 'Entrenador Pokemon',
              labelText: 'Nombre de Entrenador',
              helperText: 'Solo letras',
              suffixIcon: Icons.catching_pokemon_outlined,
              icon: Icons.catching_pokemon_rounded,
              obscureText: false,
            ),
            SizedBox(height: 30),
            CustomPokemonTextFormFile(
              hintText: 'Nombre Real',
              labelText: 'Nombre real del usuario',
              icon: Icons.email_rounded,
              obscureText: false,
            ),
            SizedBox(height: 30),
            CustomPokemonTextFormFile(
              hintText: 'E-mail',
              labelText: 'E-mail del usuario',
              icon: Icons.email_rounded,
              keyboardType: TextInputType.emailAddress,
              obscureText: false,
            ),
            SizedBox(height: 30),
            CustomPokemonTextFormFile(
              hintText: 'Contraseña',
              labelText: 'Contraseña del usuario',
              icon: Icons.password,
              obscureText: true,
            )
          ],
        ),
      )
    );
  }
}