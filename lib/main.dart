import 'package:flutter/material.dart';
void main() {
  runApp(myApp());
}
class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              leading: Icon(Icons.account_balance_sharp),
              actions: [
                Icon(Icons.account_balance_sharp),
                Icon(Icons.account_balance_sharp),
              ],
              centerTitle: true,
              title: Text("My Application"),
            ),
            body: SafeArea(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 30,top: 40,),
                  child: Text(
                  "Bangladesh, ",
                  style: TextStyle(fontSize: 24, color: Colors.red,backgroundColor: Colors.brown),textAlign: TextAlign.justify,
                ),
                ),

                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    "Bangladesh, ",
                    style: TextStyle(fontSize: 24, color: Colors.red,backgroundColor: Colors.brown),textAlign: TextAlign.justify,
                  ),
                ),

                Padding(padding: EdgeInsets.all(20),
                child: Text("fdfefeferf"),),

                Container(
                  height: 200,
                  width: 200,
                  //color: Colors.deepOrange,
                  decoration: BoxDecoration(
                    border: Border.all(width: 2,color: Colors.red),
                        borderRadius: BorderRadius.all(Radius.elliptical(15,20))
                  ),

                  child: Text("Bangladesh, to the east of India on the Bay of Bengal, is a South Asian country marked by lush greenery and many waterways. Its Padma (Ganges), Meghna and Jamuna rivers create fertile plains, and travel by boat is common. On the southern coast, the Sundarbans, an enormous mangrove forest shared with Eastern India, is home to the royal Bengal tiger. Bangladesh, to the east of India on the Bay of Bengal, is a South Asian country marked by lush greenery and many waterways. Its Padma (Ganges), Meghna and Jamuna rivers create fertile plains, and travel by boat is common. On the southern coast, the Sundarbans, an enormous mangrove forest shared with Eastern India, is home to the royal Bengal tiger. "),
                ),

                Container(
                  width: 260,
                  height: 60,
                  child: Center(child: Text("dcd")),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                      shape: BoxShape.rectangle,
                      color: Colors.deepPurple),
                )
              ],
            ))));
  }
}
