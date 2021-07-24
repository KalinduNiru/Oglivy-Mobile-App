import 'package:flutter/material.dart';

import 'dart:async';
import 'package:mysql1/mysql1.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';


class TimerScreen extends StatefulWidget {
  static const routeName = '/timer';


  @override
  _TimerScreenState createState() => _TimerScreenState();
}


class _TimerScreenState extends State<TimerScreen> {
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
  FlutterLocalNotificationsPlugin();

  void initState() {
    super.initState();
    var initializationSettingsAndroid =
    AndroidInitializationSettings('flutter_devs');
    var initializationSettingsIOs = IOSInitializationSettings();
    var initSetttings = InitializationSettings(
        initializationSettingsAndroid, initializationSettingsIOs);

    flutterLocalNotificationsPlugin.initialize(initSetttings,
        onSelectNotification: onSelectNotification);
  }

  Future onSelectNotification(String payload) {
    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
      return NewScreen(
        payload: payload,
      );
    }));
  }

  int _counter = 30;
  Timer _timer;
  void _startTimer() {
    _counter = 30;
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_counter > 0) {
        setState(() {
          _counter--;
        });
      } else {
        _timer.cancel();
      }
    });
  }




  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Text('Count Down Timer using SetState to keep updating'),
           SizedBox(
             height: 20,
           ),
           Text(
             '$_counter',
             style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
           ),
           SizedBox(
             height: 10,
           ),
           ElevatedButton(
               onPressed: () {
                 _startTimer();
               },
               child: Text('Start Timer')),

         ],
       ),
     ),
   );
  }
}
