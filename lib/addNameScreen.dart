import 'package:flutter/material.dart';
import 'package:linkedlnmobile_app/setPassword.dart';

import 'constants.dart';
import 'joinNowScreen.dart';

class AddNameScreen extends StatefulWidget {
  @override
  _AddNameScreenState createState() => _AddNameScreenState();
}

class _AddNameScreenState extends State<AddNameScreen> {
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
                  "Add your name",
                  style: KAddNameTextStyle,
                ),
              ),
              SizedBox(height: 5,),
              KTextField('First name*'),
              // SizedBox(height: 5),
              KTextField('Last name*'),
              SizedBox(height: 5,),
              Center(child: Buttons('Continue'))

            ],
          ),
        ),
      ),
    );
  }
}
