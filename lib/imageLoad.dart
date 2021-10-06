import 'package:flutter/material.dart';

class OnlineImageLoad extends StatelessWidget {
  const OnlineImageLoad({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Online Image load"),
      ),

      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            // this is for Online Image
            Center(child: Image.network("https://bestanimations.com/media/bangladesh/2076299211bangladesh-flag-waving-gif-animation-23.gif")),

            //This is for Offline image
            Image.asset("images/android.png")

          ],
        ),
      ),
    );
  }
}
