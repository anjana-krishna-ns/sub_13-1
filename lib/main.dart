import 'package:flutter/material.dart';
import 'package:sub_arche/screens/login/sign_in.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
     return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Georgia',
      ),
      debugShowCheckedModeBanner: false,

      home: signinn(),
    );
  }
}

