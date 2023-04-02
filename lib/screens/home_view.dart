import 'package:flutter/material.dart';
import 'package:flutter_class_010423/custom_widgets/custom_container.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            custom_container(Colors.amber, "Hello Ovais"),
            custom_container(Colors.red, "Hello Zuhaib"),
            custom_container(Colors.blue, "Hello Danish"),
            custom_container(Colors.grey, "Hello Jawaz"),
            
          ],
        ),
      ),
    );
  }
}
