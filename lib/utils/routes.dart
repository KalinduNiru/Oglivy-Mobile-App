import 'package:flutter/material.dart';
import 'package:flutter_app_oglivy/onboardscreen.dart';
import 'package:flutter_app_oglivy/timer.dart';



import '../timer.dart';class RouteGenerator{
  static Route<dynamic> generateRoute(RouteSettings routeSettings){
    switch (routeSettings.name){
      case OnBoardScreen.routeName:
        return MaterialPageRoute(builder: (context) => OnBoardScreen());
      case TimerScreen.routeName:
        return MaterialPageRoute(builder: (context) => TimerScreen());
    }
  }
}