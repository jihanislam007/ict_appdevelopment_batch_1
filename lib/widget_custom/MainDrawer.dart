import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:ict_appdevelopment_batch_1/Auth/profile.dart';
import 'package:ict_appdevelopment_batch_1/Auth/signup.dart';
import 'package:ict_appdevelopment_batch_1/ecommerce/ListProduct.dart';
import 'package:ict_appdevelopment_batch_1/ecommerce/counter.dart';
import 'package:ict_appdevelopment_batch_1/ecommerce/multiple_choice.dart';
import 'package:ict_appdevelopment_batch_1/ecommerce/productList.dart';
import 'package:ict_appdevelopment_batch_1/ecommerce/search.dart';

class MainDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Icon(Icons.account_box,size: 50,color: Colors.teal),
                  Text('User name'),
                  Text('Username@gmail.com'),
                  Divider(thickness: 1,color: Colors.teal),
                ],
              )),


          ListTile(
            title: Text('Home'),
            leading: Icon(Icons.home),
            onTap: (){
              Fluttertoast.showToast(msg: 'Home',toastLength: Toast.LENGTH_LONG);
            },
          ),
          ListTile(
            title: Text('SignUp'),
            leading: Icon(Icons.account_box),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> signup()));
              Fluttertoast.showToast(msg: 'SignUp',toastLength: Toast.LENGTH_LONG);
            },
          ),
          ListTile(
            title: Text('profile'),
            leading: Icon(Icons.home),
            onTap: (){

              Navigator.push(context, MaterialPageRoute(builder: (context)=> profile()));
              Fluttertoast.showToast(msg: 'profile',toastLength: Toast.LENGTH_LONG);
            },
          ),
          ListTile(
            title: Text('Order List'),
            leading: Icon(Icons.home),
            onTap: (){
              Fluttertoast.showToast(msg: 'order list',toastLength: Toast.LENGTH_LONG);
            },
          ),ListTile(
            title: Text('Product List'),
            leading: Icon(Icons.home),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> ProductList()));
              Fluttertoast.showToast(msg: 'Product list',toastLength: Toast.LENGTH_LONG);
            },
          ),ListTile(
            title: Text('Product List'),
            leading: Icon(Icons.home),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> ListProduct()));
              Fluttertoast.showToast(msg: 'List Product',toastLength: Toast.LENGTH_LONG);
            },
          ),ListTile(
            title: Text('Counter'),
            leading: Icon(Icons.home),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> counter()));
              Fluttertoast.showToast(msg: 'Counter',toastLength: Toast.LENGTH_LONG);
            },
          ),ListTile(
            title: Text('ChoiceRow'),
            leading: Icon(Icons.home),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> ChoiceRow()));
              Fluttertoast.showToast(msg: 'ChoiceRow',toastLength: Toast.LENGTH_LONG);
            },
          ),ListTile(
            title: Text('Search'),
            leading: Icon(Icons.home),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> Search()));
              Fluttertoast.showToast(msg: 'Search',toastLength: Toast.LENGTH_LONG);
            },
          )
        ],
      ),
    );
  }
}
