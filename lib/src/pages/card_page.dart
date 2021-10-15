import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card Page"),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          _cardTipo1(context),
          SizedBox(
            height: 20,
          ),
          _cardTipo2(),
        ],
      ),
    );
  }

  Widget _cardTipo1(BuildContext context){
    return Card(
      shadowColor: Colors.blue[300],
      elevation: 5,
      shape:RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue),
            title: Text("Título"),
            subtitle: Text("Subtitulo"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: null, 
                child: Text("Cancelar")
              ),
              TextButton(
                onPressed: () => _mostrarImagen(context),
                child: Text("Ok")
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _cardTipo2() {

    return Card(
      color: Colors.red[200],
      shadowColor: Colors.blue[300],
      clipBehavior: Clip.antiAlias,
      elevation: 5,
      shape:RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15)),
      child:
        Column(
          children: [
//          Image(
//            image: NetworkImage("http://cdn.eso.org/images/screen/millour-01-cc.jpg"),
//          ),
            FadeInImage(
              image: NetworkImage("http://cdn.eso.org/images/screen/millour-01-cc.jpg"),
              placeholder: AssetImage("assets/jar-loading.gif"), 
              fadeInDuration: Duration(milliseconds: 200),
              height: 220.0,
              fit: BoxFit.cover,
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Text("Texto debajo de imagen"),
            ),
          ],
        ),
    );
  }

  _mostrarImagen(BuildContext context) {
    showDialog(
      context: context, 
      barrierDismissible: true,
      builder: (context){
        
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          content: 
            Image(
              image: AssetImage("assets/BanderaEspaña.png"),
              height: 187,
               
              //fit: BoxFit.cover,
            ),
            clipBehavior: Clip.antiAlias,
            contentPadding: EdgeInsets.all(0),
        );
      },
      
    );
  }
}