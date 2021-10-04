import 'package:flutter/material.dart';

import 'Containers.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Batch -01"),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Text(" cbvdhcbdjcdk"),
              Text(" cbvdhcbdjcdk"),
              Text(" cbvdhcbdjcdk"),
              Text(" cbvdhcbdjcdk"),
              Text(" cbvdhcbdjcdk"),
              Text(" cbvdhcbdjcdk"),

              ElevatedButton(
                  onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Containers()));
              }, child: Text("Container"))



            ],
          ),
        ),



    );
  }
}
