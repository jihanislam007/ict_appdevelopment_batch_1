import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.account_balance),
          actions: [Icon(Icons.agriculture),
            Icon(Icons.agriculture)],
          backgroundColor: Colors.deepPurple,
          title: Text("batch 01"),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Center(
            child: Text("Jomshed Ali college",
              style: TextStyle(fontSize: 24,
                  color: Colors.red),),
          ),
        ),
      ),
    );
  }
}
