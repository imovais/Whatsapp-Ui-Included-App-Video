import 'package:flutter/material.dart';

Widget custom_container(color, text) {
  return Container(
    height: 200,
    width: 200,
    color: color,
    child: Center(
        child: Text(
      text,
      style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
    )),
  );
}
