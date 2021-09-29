import 'package:flutter/material.dart';

import 'Containrs.dart';

class jomshedAli extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Batch -01"),
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("we want to creat a button"),
                ElevatedButton(
                    onPressed: () {
                      print("pressed me...");
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Containers()));
                    },
                    child: Text("Container"))
              ],
            ),
          ),
        ));
  }
}
