import 'package:flutter/material.dart';
import 'package:project_kamis_jumat/projectKamis/kotak.dart';

class ProjectKamis extends StatelessWidget {
  const ProjectKamis({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Project Kamis"),
        backgroundColor: Colors.amber,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 200,
                    decoration: BoxDecoration(color: Colors.red),
                  ),
                  SizedBox(height: 10),

                  Row(
                    spacing: 10,
                    children: [
                      Expanded(
                        child: Container(
                          height: 120,
                          decoration: BoxDecoration(color: Colors.red),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 120,
                          decoration: BoxDecoration(color: Colors.red),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: 5),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                spacing: 10,
                children: [
                  SizedBox(),
                  Kotak(),
                  Kotak(),
                  Kotak(),
                  Kotak(),
                  Kotak(),
                  Kotak(),
                  Kotak(),
                  Kotak(),
                  Kotak(),
                  Kotak(),
                  Kotak(),
                  Kotak(),
                  Kotak(),
                  Kotak(),
                ],
              ),
            ),

            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(color: Colors.red),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(color: Colors.blue),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(color: Colors.yellow),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
