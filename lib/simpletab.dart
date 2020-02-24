
import 'package:flutter/material.dart';


class Simpletab extends StatelessWidget {
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