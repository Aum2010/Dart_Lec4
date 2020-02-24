import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.teal),
      home: MyHomePage(),
    );
  }
}

class GreenFog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello World'),
        ),
        backgroundColor: Colors.blueAccent,
      body:
      /*
        Center(child: Text('Body'),

        ), */
        
      //---------------------------------------------
      Center(child: Row(mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Column(mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
            child: Text('One'),
            onPressed: () => print('One Click'),
            
          ),
          Text('Two')
        ],
        )
        ],),
      ),
      //-------------------------------------------------

      /*
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},),
        */
    ); //<---------warning----
  }
}


class YelloBird extends StatefulWidget {
  @override
  _YelloBirdState createState() => _YelloBirdState();
}

class _YelloBirdState extends State<YelloBird> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
    );
  }
}

class TabBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}

