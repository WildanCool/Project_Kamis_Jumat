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
    var response = await http.get(
      Uri.parse('https://jsonplaceholder.typicode.com/users'),
    );

    var hasil = jsonDecode(response.body);

    setState(() {
      data = hasil;
      isLoading = false;
    });
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
              children: data.map((item) {
                return ListTile(title: Text(item['email']));
              }).toList(),
            ),
    );
  }
}
