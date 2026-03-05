import 'package:flutter/material.dart';

class Kotak extends StatelessWidget {
  const Kotak({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(color: Colors.red, shape: BoxShape.circle),
    );
  }
}
