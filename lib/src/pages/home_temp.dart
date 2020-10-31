// pacs de Flutter
import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  //
  final opciones = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];
  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
      ),
      body: ListView(
        //children: _crearItems(),
        children: _crearItemsMap(),
      ),
    );
  }

  List<Widget> _crearItems() {
    //
    List<Widget> lista = new List<Widget>();

    for (var opt in opciones) {
      final tempWidget = ListTile(
        title: Text(
          opt,
          style: TextStyle(color: Colors.blue),
        ),
      );

      lista
        ..add(tempWidget)
        ..add(Divider(
          color: Colors.blue[200],
          thickness: 2.0,
        ));
    }

    return lista;
  }

  List<Widget> _crearItemsMap() {
    return opciones.map((opcion) {
      return Column(
        children: [
          ListTile(
            leading: Icon(Icons.ac_unit),
            title: Text(
              opcion,
              style: TextStyle(color: Colors.blue[500]),
            ),
            subtitle: Text('Subtitulo'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {},
          ),
          Divider(
            indent: 15.0,
            endIndent: 15.0,
            thickness: 1.0,
            color: Colors.blue[200],
          ),
        ],
      );
    }).toList();
  }
}
