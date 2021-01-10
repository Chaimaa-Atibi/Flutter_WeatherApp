import 'package:flutter/material.dart';
import 'package:flutter_first_app/main-drawer.dart';

void main(){
  runApp(MaterialApp(home: MyApp(),));
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        drawer: MainDrawer(),
        appBar: AppBar(title: Text('MyFirstApp'),backgroundColor: Colors.deepPurpleAccent,),
        body: Center(child: Text('Hello World',style: TextStyle(fontSize: 24, color: Colors.pink),)),
    );
  }

}