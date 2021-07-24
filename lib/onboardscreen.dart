import 'package:flutter/material.dart';
import 'package:flutter_app_oglivy/timer.dart';

class OnBoardScreen extends StatefulWidget {
  static const routeName = '/main';

  @override
  _OnBoardScreenState createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to Flutter'),
        ),
        body: SafeArea(
          child: Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, TimerScreen.routeName);
              },
              child: const Text("Press this to continue"),
            ),
          ),
        ),
      ),
    );
  }
}
