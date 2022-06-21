import 'package:flutter/material.dart';
import 'package:linkedlnmobile_app/joinNowScreen.dart';

import 'constants.dart';

class AddEmailOrPhone extends StatefulWidget {
  @override
  _AddEmailOrPhoneState createState() => _AddEmailOrPhoneState();
}

class _AddEmailOrPhoneState extends State<AddEmailOrPhone> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: KBackgroundColor1,
      ),
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20,),
            Container(
              height: 20,
              margin: new EdgeInsets.symmetric(horizontal: 20.0),
              child: Image(
                image: AssetImage('images/icon.png'
                ),fit: BoxFit.fill,
              ),
            ),
            SizedBox(height: 40,),
            Container(
             margin: new EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                "Add your email or phone",
                style: KEmailOrPhoneTextStyle,
              ),
            ),
            SizedBox(height: 20),
            Container(
              margin: new EdgeInsets.symmetric(horizontal: 10.0),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Email or Phone*',
                      labelStyle: TextStyle(
                        color: Colors.white,
                      )
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Center(
              child: Container(
                  child:Buttons('Continue',),),
            ),
          ],
        ),
        ),
      ),
    );
  }
}

