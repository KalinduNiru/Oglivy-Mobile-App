import 'package:flutter/material.dart';
import 'package:flutter_app_oglivy/onboardscreen.dart';
import 'package:flutter_app_oglivy/utils/routes.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '';

final isRestart = StateProvider((ref)=>false);
final isPause = StateProvider((ref)=>false);

void main() {
  runApp(ProviderScope(child:MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
     initialRoute: OnBoardScreen.routeName,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}



