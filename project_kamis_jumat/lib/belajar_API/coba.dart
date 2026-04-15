import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CobaAPI extends StatefulWidget {
  const CobaAPI({super.key});

  @override
  State<CobaAPI> createState() => _CobaAPIState();
}

class _CobaAPIState extends State<CobaAPI> {
  List data = [];
  bool isLoading = true;

  Future ambilData() async {
    var response = await http.get(Uri.parse('https://dummyjson.com/products'));

    if (response.statusCode == 200) {
      var hasil = jsonDecode(response.body);
      setState(() {
        data = hasil['products'];
        isLoading = false;
      });
    } else {
      throw Exception('Gagal mengambil data user');
    }
  }

  @override
  void initState() {
    super.initState();
    ambilData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Latihan Ambil DATA")),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : ListView(
              padding: EdgeInsets.all(10),
              children: data.take(5).map((item) {
                // return Container(
                //   margin: EdgeInsets.only(bottom: 12),
                //   child: Card(
                //     elevation: 4,
                //     shape: RoundedRectangleBorder(
                //       borderRadius: BorderRadius.circular(12),
                //     ),
                //     child: Padding(
                //       padding: EdgeInsets.all(16),
                //       child: Row(
                //         children: [
                //           CircleAvatar(radius: 25, child: Icon(Icons.person)),

                //           SizedBox(width: 12),

                //           Column(
                //             crossAxisAlignment: CrossAxisAlignment.start,
                //             children: [
                //               Text(
                //                 item['name'],
                //                 style: TextStyle(
                //                   fontSize: 16,
                //                   fontWeight: FontWeight.bold,
                //                 ),
                //               ),
                //               SizedBox(height: 5),
                //               Text(
                //                 item['email'],
                //                 style: TextStyle(color: Colors.grey),
                //               ),
                //             ],
                //           ),
                //         ],
                //       ),
                //     ),
                //   ),
                // );
                return Container(
                  // height: 200,
                  width: 200,
                  color: Colors.grey.shade100,
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Image.network(item['images'][0], height: 150),
                      Text(
                        item['title'],
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        item['description'],
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
    );
  }
}
