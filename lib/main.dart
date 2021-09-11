import 'package:flutter/material.dart';

void main() {
  runApp(Hafizur());
}

class Hafizur extends StatelessWidget {
  const Hafizur({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrangeAccent,
          elevation: 40,
          leading: Icon(Icons.ac_unit_sharp),
          centerTitle: true,
          title: Text("Title"),
          actions: [Icon(Icons.access_time)],
        ),
        body: SafeArea(
            child:
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text("Bangladesh, to the east of India on the Bay of Bengal, is a South Asian country marked by lush greenery and many waterways.\n\nIts Padma (Ganges), Meghna and Jamuna rivers create fertile plains, and travel by boat is common.\n\n\t\tOn the southern coast, the Sundarbans, an enormous mangrove forest shared with Eastern India, is home to the royal Bengal tiger.",
                style: TextStyle(
                  color: Colors.purple,
                  fontSize: 20,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.red,
                  decorationStyle: TextDecorationStyle.wavy,

                ),),
              ),
            )
        ),
      ),
    );
  }
}
