import 'package:flutter/material.dart';
import 'package:ifood/Screen/HomePage.dart';
import 'package:ifood/Screen/Login.dart';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // is not restarted.
        backgroundColor: Colors.white60,
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: Login1(),
    );
  }
}



class Routes{
  static String LoginRoutes = "/";
  static String HomePageRoutes = "/HomePage";
}

