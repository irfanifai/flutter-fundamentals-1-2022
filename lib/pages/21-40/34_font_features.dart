// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, library_private_types_in_public_api, prefer_interpolation_to_compose_strings, sized_box_for_whitespace, import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'dart:ui';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Typography"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Contoh 01 (Tanpa Apapun)",
                style: TextStyle(fontSize: 20),
              ),
              Text(
                "Contoh 02 (Small Caps)",
                style: TextStyle(
                  fontSize: 20,
                  fontFeatures: [FontFeature.enable('smcp')],
                ),
              ),
              Text(
                "Contoh 1/2 (Small Caps)",
                style: TextStyle(fontSize: 20, fontFeatures: [
                  FontFeature.enable('smcp'),
                  FontFeature.enable('frac')
                ]),
              ),
              Text(
                "Contoh 3 1/2 (Small Caps)",
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: "Milonga Regular",
                    fontFeatures: [
                      FontFeature.enable('smcp'),
                      FontFeature.enable('frac')
                    ]),
              ),
              Text(
                "Contoh Cardo 19 (Tanpa Apapun)",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Cardo Regular",
                ),
              ),
              Text(
                "Contoh Cardo 19 (Old Style)",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Cardo Regular",
                  fontFeatures: [FontFeature.oldstyleFigures()],
                ),
              ),
              Text(
                "Gabriola (Default)",
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: "Gabriola",
                ),
              ),
              Text(
                "Gabriola (Style set nomor 5)",
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: "Gabriola",
                  fontFeatures: [FontFeature.stylisticSet(5)],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
