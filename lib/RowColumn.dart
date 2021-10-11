import 'package:flutter/material.dart';

class RowColumn extends StatelessWidget {
  const RowColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Row Column"),
      ),
      body: SafeArea(
        child: Column(
          children: [

            Container(
              width: double.infinity,
              height: 150,
              color: Colors.black12,
            ),

            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Container(
                  height: 100,
                  width: 80,
                  decoration: BoxDecoration(
                    border: Border.all(width: 2,color: Colors.pink,),
                    shape: BoxShape.circle,
                    color: Colors.amber

                  ),
                  //color: Colors.pink,
                  child: Center(child: Text("1",style: TextStyle(fontSize: 32,color: Colors.white),)),
                ),
                SizedBox(width: 10,),
                Container(
                  height: 100,
                  width: 80,
                  decoration: BoxDecoration(
                      border: Border.all(width: 2,color: Colors.pink,),
                      shape: BoxShape.circle,
                      color: Colors.amber

                  ),
                  //color: Colors.pink,
                  child: Center(child: Text("2",style: TextStyle(fontSize: 32,color: Colors.white),)),
                ),
                SizedBox(width: 10,),
                Container(
                  height: 100,
                  width: 80,
                  decoration: BoxDecoration(
                      border: Border.all(width: 2,color: Colors.pink,),
                      shape: BoxShape.circle,
                      color: Colors.amber

                  ),
                  //color: Colors.pink,
                  child: Center(child: Text("3",style: TextStyle(fontSize: 32,color: Colors.white),)),
                ),
                SizedBox(width: 10,),
                Container(
                  height: 100,
                  width: 80,
                  decoration: BoxDecoration(
                      border: Border.all(width: 2,color: Colors.pink,),
                      shape: BoxShape.circle,
                      color: Colors.amber

                  ),
                  //color: Colors.pink,
                  child: Center(child: Text("+",style: TextStyle(fontSize: 32,color: Colors.white),)),
                ),

              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Container(
                  height: 100,
                  width: 80,
                  decoration: BoxDecoration(
                      border: Border.all(width: 2,color: Colors.pink,),
                      shape: BoxShape.circle,
                      color: Colors.amber

                  ),
                  //color: Colors.pink,
                  child: Center(child: Text("1",style: TextStyle(fontSize: 32,color: Colors.white),)),
                ),
                SizedBox(width: 10,),
                Container(
                  height: 100,
                  width: 80,
                  decoration: BoxDecoration(
                      border: Border.all(width: 2,color: Colors.pink,),
                      shape: BoxShape.circle,
                      color: Colors.amber

                  ),
                  //color: Colors.pink,
                  child: Center(child: Text("2",style: TextStyle(fontSize: 32,color: Colors.white),)),
                ),
                SizedBox(width: 10,),
                Container(
                  height: 100,
                  width: 80,
                  decoration: BoxDecoration(
                      border: Border.all(width: 2,color: Colors.pink,),
                      shape: BoxShape.circle,
                      color: Colors.amber

                  ),
                  //color: Colors.pink,
                  child: Center(child: Text("3",style: TextStyle(fontSize: 32,color: Colors.white),)),
                ),
                SizedBox(width: 10,),
                Container(
                  height: 100,
                  width: 80,
                  decoration: BoxDecoration(
                      border: Border.all(width: 2,color: Colors.pink,),
                      shape: BoxShape.circle,
                      color: Colors.amber

                  ),
                  //color: Colors.pink,
                  child: Center(child: Text("+",style: TextStyle(fontSize: 32,color: Colors.white),)),
                ),

              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Container(
                          height: 100,
                          width: 80,
                          decoration: BoxDecoration(
                              border: Border.all(width: 2,color: Colors.pink,),
                              shape: BoxShape.circle,
                              color: Colors.amber

                          ),
                          //color: Colors.pink,
                          child: Center(child: Text("1",style: TextStyle(fontSize: 32,color: Colors.white),)),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          height: 100,
                          width: 80,
                          decoration: BoxDecoration(
                              border: Border.all(width: 2,color: Colors.pink,),
                              shape: BoxShape.circle,
                              color: Colors.amber

                          ),
                          //color: Colors.pink,
                          child: Center(child: Text("2",style: TextStyle(fontSize: 32,color: Colors.white),)),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          height: 100,
                          width: 80,
                          decoration: BoxDecoration(
                              border: Border.all(width: 2,color: Colors.pink,),
                              shape: BoxShape.circle,
                              color: Colors.amber

                          ),
                          //color: Colors.pink,
                          child: Center(child: Text("3",style: TextStyle(fontSize: 32,color: Colors.white),)),
                        ),
                        /*SizedBox(width: 10,),
                Container(
                  height: 100,
                  width: 80,
                  decoration: BoxDecoration(
                      border: Border.all(width: 2,color: Colors.pink,),
                      shape: BoxShape.circle,
                      color: Colors.amber

                  ),
                  //color: Colors.pink,
                  child: Center(child: Text("+",style: TextStyle(fontSize: 32,color: Colors.white),)),
                ),*/

                      ],
                    ),
                    SizedBox(height: 10,),

                    Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Container(
                          height: 100,
                          width: 80,
                          decoration: BoxDecoration(
                              border: Border.all(width: 2,color: Colors.pink,),
                              shape: BoxShape.circle,
                              color: Colors.amber

                          ),
                          //color: Colors.pink,
                          child: Center(child: Text("1",style: TextStyle(fontSize: 32,color: Colors.white),)),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          height: 100,
                          width: 80,
                          decoration: BoxDecoration(
                              border: Border.all(width: 2,color: Colors.pink,),
                              shape: BoxShape.circle,
                              color: Colors.amber

                          ),
                          //color: Colors.pink,
                          child: Center(child: Text("2",style: TextStyle(fontSize: 32,color: Colors.white),)),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          height: 100,
                          width: 80,
                          decoration: BoxDecoration(
                              border: Border.all(width: 2,color: Colors.pink,),
                              shape: BoxShape.circle,
                              color: Colors.amber

                          ),
                          //color: Colors.pink,
                          child: Center(child: Text("3",style: TextStyle(fontSize: 32,color: Colors.white),)),
                        ),
                        SizedBox(width: 10,),
                        /*Container(
                  height: 100,
                  width: 80,
                  decoration: BoxDecoration(
                      border: Border.all(width: 2,color: Colors.pink,),
                      shape: BoxShape.circle,
                      color: Colors.amber

                  ),
                  //color: Colors.pink,
                  child: Center(child: Text("+",style: TextStyle(fontSize: 32,color: Colors.white),)),
                ),*/

                      ],
                    ),
                  ],
                ),
                Container(
                  height: 180,
                  width: 80,
                  color: Colors.pink,
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
