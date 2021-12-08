import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MainDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
              child: Column(
                children: [

                  Icon(Icons.account_box,size: 50,),
                  Text('User name'),
                  Text('Username@gmail.com'),

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
            title: Text('profile'),
            leading: Icon(Icons.home),
            onTap: (){
              Fluttertoast.showToast(msg: 'profile',toastLength: Toast.LENGTH_LONG);
            },
          ),
          ListTile(
            title: Text('Order List'),
            leading: Icon(Icons.home),
            onTap: (){
              Fluttertoast.showToast(msg: 'order list',toastLength: Toast.LENGTH_LONG);
            },
          )
        ],
      ),
    );
  }
}
