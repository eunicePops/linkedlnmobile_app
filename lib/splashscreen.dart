import 'package:flutter/material.dart';
import 'package:linkedlnmobile_app/constants.dart';
import 'package:linkedlnmobile_app/main.dart';
import 'package:linkedlnmobile_app/setPassword.dart';
import 'addEmailOrPhone.dart';
import 'addNameScreen.dart';
import 'homeScreen.dart';
import 'joinNowScreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 2000), () {});
    // ignore: prefer_const_constructors
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => JoinNowScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KBackgroundColor,
      body: Center(
        child: Image(
          image: AssetImage('images/splashicon1.png'),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
