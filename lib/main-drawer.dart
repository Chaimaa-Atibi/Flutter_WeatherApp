import 'package:flutter/material.dart';
import './quiz.dart';
import './weather.dart';
import './gallery.dart';
import './camera.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Colors.deepPurpleAccent,Colors.white])
            ),
            child: Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('Images/logo.png'),
              ),
            ),
          ),
          ListTile(
              title: Text('Quiz',style: TextStyle(fontSize: 20)),
              trailing: Icon(Icons.arrow_right),
              onTap: (){
                //Navigator.of(context).maybePop();
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Quiz()));
              }),
          Divider(color: Colors.grey,),
          ListTile(
              title: Text('Weather',style: TextStyle(fontSize: 20)),
              trailing: Icon(Icons.arrow_right),
              onTap: (){
                //Navigator.of(context).maybePop();
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Weather()));
              }),
          Divider(color: Colors.grey,),
          ListTile(
              title: Text('Gallery',style: TextStyle(fontSize: 20)),
              trailing: Icon(Icons.arrow_right),
              onTap: (){
                //Navigator.of(context).maybePop();
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Gallery()));
              }),
          Divider(color: Colors.grey,),
          ListTile(
              title: Text('Camera ',style: TextStyle(fontSize: 20)),
              trailing: Icon(Icons.arrow_right),
              onTap: (){
                //Navigator.of(context).maybePop();
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Camera()));
              })
        ],
      ),
    );
  }
}
