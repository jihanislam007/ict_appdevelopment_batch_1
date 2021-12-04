import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class profile extends StatefulWidget {

  @override
  _profileState createState() => _profileState();
}

class _profileState extends State<profile> {

  String name='';
  String pass='';

  @override
  void initState() {
    // TODO: implement initState
    getShapref();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Center(
          child: Column(
            children: [

              Row(
                children: [

                  Text('Name : '),
                  Text(name),

                ],
              ),
              Row(
                children: [

                  Text('Password : '),
                  Text(pass),

                ],
              ),

            ],
          ),
        ),
      ),

    );
  }

  getShapref() async{

    final pref = await SharedPreferences.getInstance();

    setState(() {
      name = pref.getString('user_name')!;
      pass = pref.getString('pass')!;
    });

  }
}
