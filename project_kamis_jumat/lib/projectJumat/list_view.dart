import 'package:flutter/material.dart';

class ListViewProduk extends StatelessWidget {
  const ListViewProduk({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: SizedBox(
        width: double.infinity,
        height: 500,
        child: ListView(
          children: [
            KotakList(label: "Laptop"),
            KotakList(label: "Mouse"),
            KotakList(label: "Keyboard"),
            KotakList(label: "Monitor"),
            KotakList(label: "Printer"),
            KotakList(label: "Headset"),
            KotakList(label: "Charger"),
            KotakList(label: "Bottle"),
            KotakList(label: "Table"),
          ],
        ),
      ),
    );
  }
}

class KotakList extends StatelessWidget {
  final String label;
  const KotakList({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      height: 80,
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color.fromARGB(153, 196, 228, 236),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              label,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
