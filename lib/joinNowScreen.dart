import 'package:flutter/material.dart';

import 'Navigation/navigation.dart';
import 'constants.dart';

class JoinNowScreen extends StatefulWidget {
  @override
  _JoinNowScreenState createState() => _JoinNowScreenState();
}


class _JoinNowScreenState extends State<JoinNowScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.black12,
      ),
      home: Scaffold(
          body: SafeArea(
        child: Container(

          child: Column(
            children: [
              SizedBox(height: 50),
              Container(
              width: 200,
                height: 50,
                child: Image(
                  image: AssetImage('images/linkedln.png'
                  ),fit: BoxFit.fill,
                ),
              ),
              SizedBox(height: 50),
              Container(
                  width: 350,
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.fromLTRB(10, 20, 10, 0),
                  child: Text(
                    'Join a trusted community of 800M professionals',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w400,
                    ),
                  )),
              SizedBox(height: 100),
              //Buttons('Join now'),
              Container(
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
                    'Join Now',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    AppNavigator.navigateToAddNameScreen(context);
                  },
                ),
              ),
              ButtonsIcon('Continue with Google'),
              SizedBox(height: 20,),
          InkWell(
            onTap: (){},
            child: Container(
              height: 50,
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                // adding color will hide the splash effect
                // color: Colors.blueGrey.shade200,
              ),
              child: const Text("Sign in", style: KSignInTextStyle,),
            ),
          ),
          ],
          ),
        ),
      )),
    );
  }
}



Widget Buttons(String text){
  return Container(
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
        text,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      onPressed: () {},
    ),
  );

}

Widget ButtonsIcon(String text){
  return Container(
    width: 320,
    height: 50,
    margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
    child: ElevatedButton(
      style: ButtonStyle(
         side:MaterialStateProperty.all(BorderSide(
             color: KBackgroundColor1,
             width: 3.0,
             style: BorderStyle.solid)) ,
        backgroundColor: MaterialStateProperty.all(KBackgroundColor),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        )),

        //  side: const BorderSide(width: 5.0, color: Colors.red ),
      ),
      // color: Color(0xffa60000),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Image(
              image: AssetImage('images/gicon1.png'
              ),fit: BoxFit.fill,
            ),
          ),
          SizedBox(width: 10),
          Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
      onPressed: () {},
    ),
  );
}