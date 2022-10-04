// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, library_private_types_in_public_api, prefer_interpolation_to_compose_strings, sized_box_for_whitespace, import_of_legacy_library_into_null_safe, avoid_init_to_null, curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double myPadding = 5;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Animated Padding"),
        ),
        body: Column(
          children: [
            Flexible(
              flex: 1,
              child: Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: AnimatedPadding(
                      duration: Duration(seconds: 1),
                      padding: EdgeInsets.all(myPadding),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            myPadding = 20;
                          });
                        },
                        child: Container(
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: AnimatedPadding(
                      duration: Duration(seconds: 1),
                      padding: EdgeInsets.all(myPadding),
                      child: Container(
                        color: Colors.green,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 1,
              child: Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: AnimatedPadding(
                      duration: Duration(seconds: 1),
                      padding: EdgeInsets.all(myPadding),
                      child: Container(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: AnimatedPadding(
                      duration: Duration(seconds: 1),
                      padding: EdgeInsets.all(myPadding),
                      child: Container(
                        color: Colors.yellow,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
