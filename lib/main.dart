import 'package:flutter/material.dart';
//import 'package:flutter_class_010423/screens/home_view.dart';
import 'package:flutter_class_010423/screens/home_Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(debugShowCheckedModeBanner: false, home: ChatView()
        //HomeView()
        );
  }
}
