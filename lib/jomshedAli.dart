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
            child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text("Jomshed Ali"),

            Padding(
              padding: const EdgeInsets.only(top: 118),
              child: Text("Kushumhati, Sherpur"),
            ),
            //SizedBox(height: 300,),
            Center(
              child: ElevatedButton(
                  onPressed: () {
                    //print("Pressed mee.....");
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Containers()));
                  },
                  child: Text("My Button")),
            ),


          ],
        )));
  }
}
