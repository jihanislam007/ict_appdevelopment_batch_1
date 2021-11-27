import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class login extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final List<String> imageList = [
      "https://cdn.pixabay.com/photo/2017/12/03/18/04/christmas-balls-2995437_960_720.jpg",
      "https://cdn.pixabay.com/photo/2017/12/13/00/23/christmas-3015776_960_720.jpg",
      "https://cdn.pixabay.com/photo/2019/12/19/10/55/christmas-market-4705877_960_720.jpg",
      "https://cdn.pixabay.com/photo/2019/12/20/00/03/road-4707345_960_720.jpg",

    ];
    List<int> list = [1, 2, 3, 4, 5];
    return Scaffold(

      appBar: AppBar(
        title: Text("Login"),
      ),
body: SafeArea(
  child: SingleChildScrollView(
    child: Column(
      children: [

        Container(
            child: CarouselSlider(
              options: CarouselOptions(),
              items: list
                  .map((item) => Container(
                child: Center(child: Text(item.toString())),
                color: Colors.green,
              ))
                  .toList(),
            )),
        Container(
            child: CarouselSlider(
              options: CarouselOptions(),

              items: imageList
                  .map((item) => Container(
                child: Center(
                    child:
                    Image.network(item, fit: BoxFit.cover, width: 1000)),
              ))
                  .toList(),
            )),
        Container(
            child: CarouselSlider(
              options: CarouselOptions(
                aspectRatio: 2.0,
                enlargeCenterPage: true,
                enableInfiniteScroll: false,
                initialPage: 2,
                autoPlay: true,
              ),
              items: imageList
                  .map((item) => Container(
      child: Center(
      child:
      Image.network(item, fit: BoxFit.cover, width: 1000)),
      ))
          .toList(),
      
            )),

      ],
    ),
  ),
),
    );
  }
}
