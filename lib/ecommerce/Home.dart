import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:flutter_carousel_slider/carousel_slider_indicators.dart';
import 'package:flutter_carousel_slider/carousel_slider_transforms.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:ict_appdevelopment_batch_1/widget_custom/MainDrawer.dart';

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectNavPosiotion = 1;

  final List<String> imaglist = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmHgoKWXe-vJZ1CBdlnDF-LaLmbVmCbZmdrQ&usqp=CAU",
    "http://4.bp.blogspot.com/-8dNjFZKYTuo/TeUCdMRy3lI/AAAAAAAABI0/wmTKQnnGUsk/s1600/Animated+flag+of+Bangladesh+flag+animation+gif.gif",
    'https://media.istockphoto.com/photos/evening-view-of-skyscraper-in-dhaka-picture-id1181657227?b=1&k=20&m=1181657227&s=170667a&w=0&h=Uu5o_knptetWDO-CV9nsnGlyryOdykUihbrhFInWMNs='
    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 150,
              child: CarouselSlider.builder(
                  slideBuilder: (index){
                    return Container(
                      child: Image.network(imaglist[index], fit: BoxFit.fill,),
                    );
                  },
                  slideTransform: CubeTransform(),
                  slideIndicator: CircularSlideIndicator(
                    padding: EdgeInsets.only(bottom: 8)
                  ),
                  autoSliderDelay: Duration(seconds: 5),
                  enableAutoSlider: true,
                  unlimitedMode: true,
                  itemCount: imaglist.length
              ),
            )

          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              label: 'Product 1', icon: Icon(Icons.date_range)),
          BottomNavigationBarItem(
              label: 'Product 2', icon: Icon(Icons.account_box)),
          BottomNavigationBarItem(
              label: 'Product 3', icon: Icon(Icons.image)),
        ],
        backgroundColor: Colors.red,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.purple,
        elevation: 20,
        currentIndex: _selectNavPosiotion,
        onTap: (int index){
          setState(() {
            _selectNavPosiotion = index;
          });
          Fluttertoast.showToast(msg: index.toString(),toastLength: Toast.LENGTH_LONG);
        },
      ),
    );
  }
}
