

import 'package:burclar/route_generator.dart';
import 'package:flutter/material.dart';

void main (){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //Ana renk
        primarySwatch: Colors.indigo
      ),
      onGenerateRoute: RouteGenerator.routeGenerator,
    );
  }
}
