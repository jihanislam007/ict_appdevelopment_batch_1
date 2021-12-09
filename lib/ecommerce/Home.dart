import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:flutter_carousel_slider/carousel_slider_indicators.dart';
import 'package:flutter_carousel_slider/carousel_slider_transforms.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:ict_appdevelopment_batch_1/ecommerce/modelClass/productListmodel.dart';
import 'package:ict_appdevelopment_batch_1/widget_custom/MainDrawer.dart';

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectNavPosiotion = 1;

  final List<String> imaglist = [
    'https://cdn.pixabay.com/photo/2016/03/02/20/13/grocery-1232944__480.jpg',
    'https://cdn.pixabay.com/photo/2016/03/23/19/38/shopping-carts-1275480__340.jpg',
    'https://cdn.pixabay.com/photo/2016/11/02/16/49/grapefruits-1792233__340.jpg',
    'https://cdn.pixabay.com/photo/2017/08/10/07/20/grocery-store-2619380__340.jpg',
    'https://cdn.pixabay.com/photo/2018/01/25/08/14/aisle-3105629__340.jpg',
    'https://cdn.pixabay.com/photo/2019/03/13/11/07/supermarket-4052658__480.jpg'
    ];

  /*All product list */
  final List<productListModel> productlist = [
    productListModel(1, "Product 1", "Product 1 desc", 5, 2, 20, 100, 5, 'https://cdn.pixabay.com/photo/2019/03/12/09/18/tomatoes-4050245__340.jpg'),
    productListModel(2, "Product 2", "Product 2 desc", 5, 2, 20, 100, 5, 'https://cdn.pixabay.com/photo/2019/03/12/09/18/tomatoes-4050245__340.jpg'),
    productListModel(3, "Product 3", "Product 3 desc", 5, 2, 20, 100, 5, 'https://cdn.pixabay.com/photo/2019/03/12/09/18/tomatoes-4050245__340.jpg'),
    productListModel(4, "Product 4", "Product 4 desc", 5, 2, 20, 100, 5, 'https://cdn.pixabay.com/photo/2019/03/12/09/18/tomatoes-4050245__340.jpg'),
    productListModel(5, "Product 5", "Product 5 desc", 5, 2, 20, 100, 5, 'https://cdn.pixabay.com/photo/2019/03/12/09/18/tomatoes-4050245__340.jpg'),
    productListModel(4, "Product 4", "Product 4 desc", 5, 2, 20, 100, 5, 'https://cdn.pixabay.com/photo/2019/03/12/09/18/tomatoes-4050245__340.jpg'),
    productListModel(5, "Product 5", "Product 5 desc", 5, 2, 20, 100, 5, 'https://cdn.pixabay.com/photo/2019/03/12/09/18/tomatoes-4050245__340.jpg'),
    productListModel(6, "Product 6", "Product 6 desc", 5, 2, 20, 100, 5, 'https://cdn.pixabay.com/photo/2019/03/12/09/18/tomatoes-4050245__340.jpg')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.red,
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
            ),

            Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GridView.builder(
                    itemCount: productlist.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10
                      ),
                      itemBuilder: (BuildContext context, index){
                        return Card(
                          elevation: 20,
                          child: Column(
                            children: [
                              Container(
                                child: Image.network(productlist[index].imageUrl),
                              ),
                              Text(productlist[index].title)
                            ],
                          ),
                        );
                      }),
                )


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

class AppBars extends AppBar {
  AppBars():super(
    iconTheme: IconThemeData(
      color: Colors.black, //change your color here
    ),
    backgroundColor: Colors.white,
    title: Text(
      "this is app bar",
      style: TextStyle(color: Colors.black),
    ),
    elevation: 0.0,
    automaticallyImplyLeading: false,
    actions: <Widget>[
      IconButton(
        icon: Icon(Icons.notifications),
        onPressed: () => null,
      ),
      IconButton(
        icon: Icon(Icons.person),
        onPressed: () => null,
      ),
    ],
  );
}