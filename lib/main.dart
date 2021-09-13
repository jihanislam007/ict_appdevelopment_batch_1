import 'package:flutter/material.dart';
void main() {
  runApp(Rubel());
}
class Rubel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          actions: [Icon(Icons.account_balance),
            Icon(Icons.align_vertical_top_rounded)],
          leading: Icon(Icons.accessibility_new_rounded),
          backgroundColor: Colors.purple,
          centerTitle: true,
          title: Text("Monir "),
        ),
        body: SafeArea(
          child: Text("Bangladesh, to the east of India on the Bay of Bengal, is a South Asian country marked by lush greenery and many waterways. Its Padma (Ganges), Meghna and Jamuna rivers create fertile plains, and travel by boat is common. On the southern coast, the Sundarbans, an enormous mangrove forest shared with Eastern India, is home to the royal Bengal tiger. ",
          style: TextStyle(fontSize: 24,
          color: Colors.deepOrange,
          backgroundColor: Colors.green,
          fontWeight: FontWeight.normal),
          ),
        )
      )
    );
  }
}


