import 'package:flutter/material.dart';

class Murojaah extends StatefulWidget {
  const Murojaah({super.key});

  @override
  State<Murojaah> createState() => _MurojaahState();
}

class _MurojaahState extends State<Murojaah> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Murojaah"), backgroundColor: Colors.amber),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(height: 70, color: Colors.blue),
              ),
              Expanded(
                flex: 1,
                child: Container(height: 70, color: Colors.red),
              ),
            ],
          ),

          // Column(
          //   children: [
          //     Container(height: 50, width: 100, color: Colors.purple),
          //     Row(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       children: [
          //         Container(height: 50, width: 50, color: Colors.blue),
          //         Container(height: 50, width: 50, color: Colors.red),
          //       ],
          //     ),
          //   ],
          // ),

          // Row(
          //   children: [
          //     Expanded(child: Container(height: 50, color: Colors.blue)),
          //     Expanded(child: Container(height: 50, color: Colors.red)),
          //   ],
          // ),

          // Text("Teks 1"),
          // Text("Teks 2"),
          // Text("Teks 3"),

          // Row(
          //   children: [
          //     Container(
          //       width: 50,
          //       height: 50,
          //       decoration: BoxDecoration(color: Colors.red),
          //     ),
          //     Container(
          //       width: 50,
          //       height: 50,
          //       decoration: BoxDecoration(color: Colors.red),
          //     ),
          //   ],
          // ),

          // Center(child: Text("Hello World")),
        ],
      ),
    );
  }
}
