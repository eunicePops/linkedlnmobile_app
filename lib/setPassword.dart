import 'package:flutter/material.dart';

import 'constants.dart';
import 'joinNowScreen.dart';

class SetPasswordScreen extends StatefulWidget {
  @override
  _SetPasswordScreenState createState() => _SetPasswordScreenState();
}

class _SetPasswordScreenState extends State<SetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: KBackgroundColor1,
      ),
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
                  "Set your password",
                  style: KEmailOrPhoneTextStyle,
                ),
              ),
              SizedBox(height: 5,),
              KTextField('Email or Phone*'),
             // SizedBox(height: 5),
              KTextField('Password*'),
              SizedBox(height: 20,),
          Container(
            margin: new EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              'By clicking Agree & Join, you agree to the Linkedln User Agreement '
                  'Privacy Policy, and Cookie Policy. For phone number signupswe will send a verification '
                  'code via SMS.',
              //textAlign: TextAlign.center,
              style: AgreementTextStyle),
          ),
              Center(child: Buttons('Agree & Join'))
            ],
          ),
        ),
      ),
    );
  }
}

Widget KTextField(String text ){
  return Container(
    margin: new EdgeInsets.symmetric(horizontal: 10.0),
    child: Padding(
      padding:  EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      child: TextFormField(
        decoration:  InputDecoration(
            border: UnderlineInputBorder(),
            labelText: text,
            labelStyle: TextStyle(
              color: Colors.white,
            )
        ),
      ),
    ),
  );
  
}