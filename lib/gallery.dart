import 'package:flutter/material.dart';

class Gallery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Gallery'),backgroundColor: Colors.deepPurpleAccent,),
      body: Center(child: Text('Gallery',style: TextStyle(fontSize: 22),)),
    );
  }
}
