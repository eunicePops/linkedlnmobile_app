import 'package:flutter/material.dart';
import 'package:linkedlnmobile_app/addEmailOrPhone.dart';
import 'package:linkedlnmobile_app/addNameScreen.dart';
import 'package:linkedlnmobile_app/joinNowScreen.dart';
import 'package:linkedlnmobile_app/setPassword.dart';

class AppNavigator{
  static const INITIAL_ROUTE = '/';
  static const JoinNowScreen_ROUTE = '/joinNowScreen';
  static const AddNameScreen_ROUTE = '/addNameScreen';
  static const AddEmailOrPhoneScreen_ROUTE = '/addEmailOrPhoneScreen';
  static const SetPasswordScreen_ROUTE = '/setPasswordScreen';


//The App Navigator supports Named routes and Material page route navigation types

static void navigateTo(BuildContext context, String routeName) {
Navigator.pushNamed(context, routeName);
}

  static void navigateToJoinNowScreen(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => JoinNowScreen()));
  }

  static void navigateToAddNameScreen(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => AddNameScreen()));
  }

  static void navigateToAddEmailOrPhoneScreen(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => AddEmailOrPhoneScreen()));
  }

  static void navigateToSetPasswordScreen(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => SetPasswordScreen()));
  }
}