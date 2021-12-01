import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class signup extends StatefulWidget {
  @override
  _signupState createState() => _signupState();
}

class _signupState extends State<signup> {
  DateTime? _dateTime;
  int _valueradio = 0;
  int radiovalue = 0;

  getDate() async {
    DateTime? date = await showDatePicker(
        context: context,
        initialDate: DateTime(DateTime.now().year),
        firstDate: DateTime(DateTime.now().year - 20),
        lastDate: DateTime(DateTime.now().year + 2));
    setState(() {
      _dateTime = date;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(child: Text('Sign up')),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                //controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Enter your password'),
              ),
            ),
            Container(
              height: 60,
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Color(0xFF8A8383))),
              margin: EdgeInsets.only(left: 12, right: 12),
              padding: EdgeInsets.only(left: 12, right: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      child: _dateTime == null
                          ? Flexible(child: TextField())
                          : Text(
                              'Date : ${_dateTime!.day}-${_dateTime!.month}-${_dateTime!.year}')),
                  IconButton(
                      onPressed: () {
                        getDate();
                      },
                      icon: Icon(
                        Icons.date_range_outlined,
                        color: Color(0xFF06D231),
                      ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                //controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Enter your password'),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  flex: 2,
                  child: Row(
                    children: [
                      Radio(
                          value: 1,
                          groupValue: _valueradio,
                          onChanged: (value) {
                            setState(() {
                              _valueradio = value as int;
                            });
                          }),
                      SizedBox(
                        width: 0,
                      ),
                      Text("Male")
                    ],
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: Row(
                    children: [
                      Radio(
                          value: 2,
                          groupValue: _valueradio,
                          onChanged: (value) {
                            setState(() {
                              _valueradio = value as int;
                            });
                          }),
                      SizedBox(
                        width: 0,
                      ),
                      Text("Female")
                    ],
                  ),
                )
              ],
            ),
            TextButton(
                onPressed: () {
                  getgender();
                },
                child: Text('Gender')),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Radio(
                        value: 1,
                        groupValue: radiovalue,
                        activeColor: Color(0xFF14C10E),
                        onChanged: (value) {
                          setState(() {
                            radiovalue = value as int;
                          });
                        }),
                    Text('Male')
                  ],
                ),
                Row(
                  children: [
                    Radio(
                        value: 2,
                        groupValue: radiovalue,
                        onChanged: (value) {
                          setState(() {
                            radiovalue = value as int;
                          });
                        }),
                    Text('FeMale')
                  ],
                ),



              ],
            ),ElevatedButton(onPressed: (){
              Fluttertoast.showToast(msg: radiovalue.toString(), toastLength: Toast.LENGTH_LONG);
            }, child: Text('Submit'))
          ],
        ),
      ),
    );
  }

  getgender() {
    if (_valueradio == 1) {
      Fluttertoast.showToast(msg: 'Male', toastLength: Toast.LENGTH_LONG);
    } else {
      Fluttertoast.showToast(msg: 'FeMale', toastLength: Toast.LENGTH_LONG);
    }
    Fluttertoast.showToast(
        msg: _valueradio.toString(), toastLength: Toast.LENGTH_LONG);
  }
}
