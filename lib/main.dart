import 'package:flutter/material.dart';
import 'package:x/view/ui/home/ui.dart';

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
      
        primaryColor: Colors.black,
      ),
      home: Home(),
    );
  }
}

