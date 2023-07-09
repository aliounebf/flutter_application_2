///
/// main.dart
///

import 'package:flutter/material.dart';
import 'screen/device.dart';

void main() {
  runApp(MyApp());
}

/// La classe principale de l'application
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

/// la classe de l'état  de l'application  principale
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Richnou",
      theme: ThemeData(
        fontFamily: 'Poppins',
        primarySwatch: Colors.green,
        // brightness: Brightness.light,
        // scaffoldBackgroundColor: Colors.amber,
      ),
      home: DeviceScreen(),
    );
  }
}
