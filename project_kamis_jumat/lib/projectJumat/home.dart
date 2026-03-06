import 'package:flutter/material.dart';
import 'package:project_kamis_jumat/projectJumat/diskon.dart';
import 'package:project_kamis_jumat/projectJumat/list_view.dart';
import 'package:project_kamis_jumat/projectJumat/tombol.dart';

class ProjectJumat extends StatefulWidget {
  const ProjectJumat({super.key});

  @override
  State<ProjectJumat> createState() => _ProjectJumatState();
}

class _ProjectJumatState extends State<ProjectJumat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("Project Jum'at"),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 240,
              child: PageView(
                children: [
                  KotakDiskon(warna: Colors.red, teks: "Promo Diskon"),
                  KotakDiskon(warna: Colors.blue, teks: "Flash Sale"),
                  KotakDiskon(warna: Colors.green, teks: "Gratis Ongkir"),
                ],
              ),
            ),

            SizedBox(height: 10),

            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Tombol(
                    icon: Icons.shopping_bag,
                    warna: Colors.blueGrey,
                    label: "Produk",
                  ),
                  SizedBox(width: 10),
                  Tombol(
                    icon: Icons.discount,
                    warna: Colors.blueGrey,
                    label: "Promo",
                  ),
                  SizedBox(width: 10),
                  Tombol(
                    icon: Icons.category,
                    warna: Colors.blueGrey,
                    label: "Kategori",
                  ),
                  SizedBox(width: 10),
                  Tombol(
                    icon: Icons.person,
                    warna: Colors.blueGrey,
                    label: "Profile",
                  ),
                ],
              ),
            ),

            // SizedBox(height: 10),
            ListViewProduk(),
          ],
        ),
      ),
    );
  }
}
