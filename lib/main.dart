import 'package:flutter/material.dart';
void main() {
  runApp(jomshedAli());}
class jomshedAli extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.add_road_rounded),
          actions: [Icon(Icons.api_rounded),Icon(Icons.add_road_rounded)],
          centerTitle: true,
          title: Text("Batch -001 "),
        ),
        body: SafeArea(
          child: ListView(
            children: [

              Container(
                  height: 100,
                  width: 200,
                  color: Colors.deepOrange,
                  child: Center(child: Text("Batch -001 "))),Container(
                  height: 100,
                  width: 200,
                  color: Colors.purple,
                  child: Text("Batch -002 ")),
              Text("Batch -003 ")
            ],
          ),
        ),
      ),
    );
  }
}


