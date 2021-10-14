import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert Page"),
      ),
      body: Center(
        child: Text("Texto", style: TextStyle(fontSize: 30.0),),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pushNamed(context, 'avatar');
        },
        child: Icon(Icons.arrow_left_rounded),
      ),
    );
  }
}