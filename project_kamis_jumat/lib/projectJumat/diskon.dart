import 'package:flutter/material.dart';

class KotakDiskon extends StatelessWidget {
  final Color warna;
  final String teks;
  const KotakDiskon({super.key, required this.warna, required this.teks});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: warna,
              borderRadius: BorderRadius.circular(20),
            ),
          ),

          Center(
            child: Text(
              teks,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
