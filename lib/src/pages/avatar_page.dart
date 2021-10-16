import 'package:flutter/material.dart';

class AvatarPage extends StatefulWidget {

  @override
  State<AvatarPage> createState() => _AvatarPageState();
}

class _AvatarPageState extends State<AvatarPage> {
  String url = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmXTlg6H7mBTxWWKnXB708KlCv-oRlPrlXOA&usqp=CAU";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Avatar Page"),
        actions: [
          GestureDetector(
            onTap: (){
              setState(() {
                url = "https://i.blogs.es/85aa44/stan-lee/450_1000.jpg";
              });
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
              setState(() {
                url = "https://www.estudiadeporte.com/wp-content/uploads/ies-jandula-estudia-deporte.jpg";
              });
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
          image: NetworkImage(url)
          ),
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
              image: NetworkImage(url),
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