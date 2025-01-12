import 'package:flutter/material.dart';

class CustomPokemonElevatedButton extends StatelessWidget {
  const CustomPokemonElevatedButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
     onPressed: () => 
     showDialog(
       context: context,
       barrierDismissible: false,
       builder: (BuildContext context) => AlertDialog(
         title: const Text('Pokeruta Equivocada'),
         content: const Column(
           mainAxisSize: MainAxisSize.min,
           children: [
             Text('A seleccionado una ruta invalida en la navegación de nuestra aplicación pokemon'),
             SizedBox(height: 10),
             FlutterLogo(size: 100),
           ],
         ),
         actions: [
           TextButton(
             onPressed: () => Navigator.pop(context),
             child: Text('Cancelar')
           )
         ],
       )
     ),
     child: const Text('Mostrar Alerta')
            );
  }
}