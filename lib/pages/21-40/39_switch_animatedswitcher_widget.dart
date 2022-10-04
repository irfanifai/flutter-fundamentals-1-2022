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
  bool isON = false;
  Widget myWidget = Container(
    width: 200,
    height: 100,
    decoration: BoxDecoration(
      color: Colors.red,
      border: Border.all(
        color: Colors.black,
        width: 3,
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Animated Container"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AnimatedSwitcher(
                child: myWidget,
                duration: Duration(seconds: 1),
                transitionBuilder: (child, animation) => ScaleTransition(
                  scale: animation,
                  child: child,
                ),
              ),
              Switch(
                  activeColor: Colors.green,
                  inactiveThumbColor: Colors.red,
                  inactiveTrackColor: Colors.red[200],
                  value: isON,
                  onChanged: (newValue) {
                    isON = newValue;
                    setState(() {
                      if (isON)
                        myWidget = SizedBox(
                          width: 200,
                          height: 100,
                          child: Center(
                            child: Text(
                              "Switch: ON",
                              style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        );
                      else
                        myWidget = Container(
                          width: 200,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            border: Border.all(
                              color: Colors.black,
                              width: 3,
                            ),
                          ),
                        );
                    });
                  })
            ],
          ),
        ),
      ),
    );
  }
}
