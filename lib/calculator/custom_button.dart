import 'package:flutter/material.dart';

class custom_button extends StatelessWidget {

  late String btntext;
  late int btncolor,textcolor;
  late double textSize;
  late Function callback;


  custom_button(this.btntext, this.btncolor, this.textcolor, this.textSize,this.callback);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        color: Color(btncolor),
        elevation: 12,
        child: Container(
          height: MediaQuery.of(context).size.height / 10,
          width: MediaQuery.of(context).size.width / 4.5,
          child: TextButton(
            child: Text(
              btntext,
              style: TextStyle(fontSize: textSize, color: Color(textcolor)),
            ),
            onPressed: () => callback(btntext),
          ),
        ),
      ),
    );
  }
}
