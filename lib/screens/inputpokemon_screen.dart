import 'package:flutter/material.dart';
import 'package:pokemon_app/widgets/widgets.dart';

class InputpokemonScreen extends StatelessWidget {
   
  const InputpokemonScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final myFormKey = GlobalKey<FormState>();

    final Map<String, String> formTrainerValues = {
      'entrenador': 'rojo',
      'nombre': 'fran',
      'email': 'entrandorpokemon@gmail.com',
      'password': '123456',
      'role': 'usuario',
    };

    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Input And Form Pokemon'),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Form(
          key: myFormKey,
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
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  FocusScope.of(context).requestFocus(FocusNode());

                  if(!myFormKey.currentState!.validate()) { 
                    print('Formulario no válido');
                    return;
                  }
                },
                child: const SizedBox(
                  width: double.infinity,
                  child: Center(child: Text('Enviar'))
                )
              )
            ],
          ),
        ),
      )
    );
  }
}