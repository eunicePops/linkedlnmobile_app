import 'package:flutter/material.dart';
import 'package:linkedlnmobile_app/Navigation/navigation.dart';
import 'package:linkedlnmobile_app/joinNowScreen.dart';

import 'constants.dart';

class AddEmailOrPhoneScreen extends StatefulWidget {
  @override
  _AddEmailOrPhoneScreenState createState() => _AddEmailOrPhoneScreenState();
}

class _AddEmailOrPhoneScreenState extends State<AddEmailOrPhoneScreen> {
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
                width: 320,
                height: 50,
                margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    )),
                  ),
                  // color: Color(0xffa60000),
                  child: Text(
                    'Continue',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    AppNavigator.navigateToSetPasswordScreen(context);
                  },
                ),
              ),
            ),
          ],
        ),
        ),
      ),
    );
  }
}

