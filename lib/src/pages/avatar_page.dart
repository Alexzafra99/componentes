import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Avatar Page"),
      ),
      body: Center(
        child: Text("Avatar", style: TextStyle(fontSize: 30.0),),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pushNamed(context, '/');
        },
        child: Icon(Icons.arrow_left_rounded),
      ),
    );
  }
}