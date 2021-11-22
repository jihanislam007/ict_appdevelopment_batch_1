import 'package:flutter/material.dart';

class custom_widget extends StatelessWidget {
  late String image, text;

  custom_widget(String image, text) {
    this.image = image;
    this.text = text;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 120,
      child: Card(
        elevation: 20,
        child: Column(
          children: [
            Container(
              height: 80,
              child: Image.network(image),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              child: Text(text,style: TextStyle(fontSize: 20),),
            )
          ],
        ),
      ),
    );
  }
}
