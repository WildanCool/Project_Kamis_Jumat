import 'package:flutter/material.dart';

class Project extends StatefulWidget {
  const Project({super.key});

  @override
  State<Project> createState() => _ProjectState();
}

class _ProjectState extends State<Project> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Welcome",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: 280,
              child: PageView(
                children: [
                  Container(
                    decoration: BoxDecoration(color: Colors.red),
                    child: Center(child: Text("Halaman 1")),
                  ),
                  Container(
                    decoration: BoxDecoration(color: Colors.amber),
                    child: Center(child: Text("Halaman 2")),
                  ),
                  Container(
                    decoration: BoxDecoration(color: Colors.green),
                    child: Center(child: Text("Halaman 3")),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 100,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(child: Text("Menu 1")),
                  ),
                  Container(
                    width: 100,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(child: Text("Menu 2")),
                  ),
                  Container(
                    width: 100,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(child: Text("Menu 3")),
                  ),
                  Container(
                    width: 100,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(child: Text("Menu 4")),
                  ),
                ],
              ),
            ),

            Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 200,
                        color: Colors.blue,
                        child: Center(child: Text("Bagian 1")),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 200,
                        color: Colors.red,
                        child: Center(child: Text("Bagian 2")),
                      ),
                    ),
                  ],
                ),

                Container(
                  width: double.infinity,
                  height: 160,
                  decoration: BoxDecoration(color: Colors.green),
                  child: Center(child: Text("Bagian 3")),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
