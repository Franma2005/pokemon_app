import 'package:flutter/material.dart';
import 'package:pokemon_app/router/app_routes.dart';

class HomepokemonScreen extends StatelessWidget {
  
  static final AppRoutes appRoutes = AppRoutes();
  const HomepokemonScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: const Center(child: Text('Home Pokemon Screen')),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => 
        ListTile(
          leading: appRoutes.menuOptions[index].icon,
          title: Text(appRoutes.menuOptions[index].nombre),
          onTap: () { Navigator.pushNamed(context, appRoutes.menuOptions[index].route); },
        ),
        separatorBuilder: (context, index) => Divider(),
        itemCount: appRoutes.menuOptions.length,
      )
      );
  }
}