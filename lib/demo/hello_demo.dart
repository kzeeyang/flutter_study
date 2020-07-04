import 'package:flutter/material.dart';

class Hello extends StatelessWidget {
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'App Hello World',
        textDirection: TextDirection.rtl,
        style: TextStyle(
          fontSize: 40.0,
          fontWeight: FontWeight.bold,
          color: Colors.blue,
        ),
      ),
    );
  }
}
