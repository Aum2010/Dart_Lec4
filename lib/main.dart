import 'package:flutter/material.dart';
import 'package:demo3/simpletab.dart';

void main() => runApp(MyApp());
//------------------------------------------------
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    // return MaterialApp(
    //   title: 'Flutter Demo',
    //   debugShowCheckedModeBanner: false,
    //   theme: ThemeData(primarySwatch: Colors.teal),
    //   home: //MyHomePage(),
    //   TabBarDemo(), //-------------<--------
    // );

    //-------------7-1-------
    return MaterialApp(initialRoute: '/'
    , routes: {
        '/' : (context) => MyHomePage(),
        '/second' : (context) => SecondScreenState(),
        '/tab' : (context) =>  Simpletab()
    },

    
      
    
    
    );

  }
}
//-------------------------------------------------


//-------------------------------------

class SecondScreenState extends StatefulWidget {
  @override
  _SecondScreenStateState createState() => _SecondScreenStateState();
}

class _SecondScreenStateState extends State<SecondScreenState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
        ),
      body: RaisedButton(child: Text('one'),
          onPressed: () => {Navigator.pop(context)},
        )
      );
  }
}

//-------------------------------------

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
            child: Text('two'),
            //onPressed: () => Navigator.pushNamed(context, '/second'),
            onPressed: () => Navigator.pushNamed(context, '/second'),
          ),
          RaisedButton(
            child: Text('Tab'),
            onPressed: () => Navigator.pushNamed(context, '/tab'),
            )
          ,Text('Two')
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


/*
class TabBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.directions_car),),
              Tab(icon: Icon(Icons.directions_transit),),
              Tab(icon: Icon(Icons.directions_bike),)
            ],),
            title: Text('Tab Demo'),
          ),
          body: TabBarView(children: <Widget>[
              Icon(Icons.directions_car),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike)
          ],),
        ),  
      )
    );
  }
}

*/