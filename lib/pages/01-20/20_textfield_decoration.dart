// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, library_private_types_in_public_api, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan Text Field"),
        ),
        body: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextField(
                decoration: InputDecoration(
                  fillColor: Colors.lightBlue[50],
                  filled: true,
                  // border: InputBorder.none,
                  icon: Icon(Icons.adb),
                  // prefix: Container(
                  //   width: 5,
                  //   height: 5,
                  //   color: Colors.red,
                  // ),
                  prefixIcon: Icon(Icons.person),
                  // prefixText: "Name: ",
                  prefixStyle: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.w600),
                  labelText: "Nama Lengkap",
                  // labelStyle: ,
                  hintText: "Nama lengkapnya lho..",
                  hintStyle: TextStyle(fontSize: 12),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onChanged: (value) {
                  setState(() {});
                },
                controller: controller,
              ),
              Text(controller.text)
            ],
          ),
        ),
      ),
    );
  }
}
