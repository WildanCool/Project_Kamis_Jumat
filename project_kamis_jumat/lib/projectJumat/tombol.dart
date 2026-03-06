import 'package:flutter/material.dart';

class Tombol extends StatelessWidget {
  final Color warna;
  final IconData icon;
  final String label;
  const Tombol({
    super.key,
    required this.icon,
    required this.warna,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          color: warna,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          spacing: 2,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: Colors.white, size: 30),
            Text(
              label,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
