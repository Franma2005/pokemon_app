import 'package:flutter/material.dart';

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
            TextFormField(
              autofocus: true,
              initialValue: 'Entrenado Pokemon',
              textCapitalization: TextCapitalization.words,
              onChanged: (String value) => print(value),
              validator: (String? value) {
                if(value!.length < 3) return 'Mínimo 3 caracteres';
              },
              decoration: InputDecoration(
                hintText: 'Nombre de Entrenador Pokemon',
                labelText: 'Nombre',
                helperText: 'Solo letras',
                suffixIcon: Icon(Icons.catching_pokemon_outlined),
                icon: Icon(Icons.catching_pokemon_rounded),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    topRight: Radius.circular(10)
                  )
                )
              ),
            ),
          ],
        ),
      )
    );
  }
}