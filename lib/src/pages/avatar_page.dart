import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Avatar Page"),
        actions: [
          GestureDetector(
            onTap: (){
              _mostrarImagen(context);
            },
            child: Container(
              padding: EdgeInsets.all(5),
              child: CircleAvatar(
                backgroundImage: NetworkImage("https://i.blogs.es/85aa44/stan-lee/450_1000.jpg"),
                radius: 25,
              ),            
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, '/');
            },
            child: Container(
              padding: EdgeInsets.all(5),
              child: CircleAvatar(
                child: Text("AZ"),
                backgroundColor: Colors.orange[400],
                foregroundColor: Colors.white,
                radius: 25,
              ),
            ),
          ),
        ],
      ),
      body: Center(
        child: FadeInImage(
          placeholder: AssetImage("assets/jar-loading.gif"), 
          image: NetworkImage("https://www.estudiadeporte.com/wp-content/uploads/ies-jandula-estudia-deporte.jpg"))
      ),
      
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pushNamed(context, '/');
        },
        child: Icon(Icons.arrow_left_rounded),
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
              image: NetworkImage("https://i.blogs.es/85aa44/stan-lee/450_1000.jpg"),
              height: 200,
               
              //fit: BoxFit.cover,
            ),
            clipBehavior: Clip.antiAlias,
            contentPadding: EdgeInsets.all(0),
        );
      },
      
    );
  }
}