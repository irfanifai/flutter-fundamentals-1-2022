// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, library_private_types_in_public_api, prefer_interpolation_to_compose_strings, sized_box_for_whitespace, import_of_legacy_library_into_null_safe, avoid_init_to_null, curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controller = TextEditingController(text: "No Name");
  bool isON = false;

  void saveData() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString("nama", controller.text);
    pref.setBool("ison", isON);
  }

  Future<String> getNama() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString("name") ?? "No Name";
  }

  Future<bool> getON() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getBool("ison") ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Shared Preference Example"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextField(
                controller: controller,
              ),
              Switch(
                value: isON,
                onChanged: (newValue) {
                  setState(
                    () {
                      isON = newValue;
                    },
                  );
                },
              ),
              ElevatedButton(
                child: Text("Save"),
                onPressed: () {
                  saveData();
                },
              ),
              ElevatedButton(
                child: Text("Load"),
                onPressed: () {
                  getNama().then((s) {
                    controller.text = s;
                    setState(
                      () {},
                    );
                  });
                  getON().then((b) {
                    isON = b;
                    setState(
                      () {},
                    );
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
