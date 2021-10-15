import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert Page"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _mostrarAlert(context), 
          child: Text("Mostrar Alerta",style: TextStyle(fontSize: 20)),
          style: ElevatedButton.styleFrom(
            primary: Colors.blue,
            shape: StadiumBorder()
          )
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pushNamed(context, 'avatar');
        },
        child: Icon(Icons.arrow_left_rounded),
      ),
    );
  }

  _mostrarAlert(BuildContext context) {
    showDialog(
      context: context, 
      barrierDismissible: true,
      builder: (context){
        
        return AlertDialog(
          title: Text("Alerta"),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("Este es el contenido de la alerta"),
              SizedBox(height: 20),
              FlutterLogo(size: 80,)
            ],
          ),
          actions: [
            TextButton(
              child: Text("Cancelar"),
              onPressed: () => Navigator.pushNamed(context, '/'), 
            ),
            TextButton(
              child: Text("Ok"),
              onPressed: (){
                Navigator.of(context).pop();
              },   
            ),
          ],
        );
      },
      
    );
  }
}