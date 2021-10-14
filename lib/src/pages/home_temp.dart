import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {

  final opciones =["uno","dos","tres"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: 
        AppBar(
          title: Text("Componentes Temp"),
          centerTitle: true,
      ),
      body: 
        ListView(
          children: _crearItemsCorta()
        )
    );
  }

  List<Widget> _crearItems(){
    List<Widget> lista = []; 
  
    for (String opt in opciones) {
      final tempWidget = ListTile(
        title: Text(opt),
      );
      lista.add(tempWidget);
      lista.add(Divider());
      //lista..add(tempWidget)
      //     ..add(Divider());
    }
    return lista;
  }

  List<Widget> _crearItemsCorta(){
    return opciones.map((item) => Column(
      children: [
        ListTile(
          title: Text(item+"!"),
          subtitle: Text("subtitulo"),
          leading: Icon(Icons.auto_awesome_sharp),
          trailing: Icon(Icons.edit),
          onTap: (){}
        ),
        Divider(
          color: Colors.blue[800],
          height: 10,
        )
      ],
    )).toList();
  }
}