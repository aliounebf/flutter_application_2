///
/// screen/device.dart
///
import 'package:flutter/material.dart';
import 'home.dart';
import 'list.dart';
import 'truc.dart';
import 'settings.dart';
import 'room.dart';

class DeviceScreen extends StatefulWidget {
  @override
  _DeviceScreenState createState() => _DeviceScreenState();
}

class _DeviceScreenState extends State<DeviceScreen> {
  //
  int _currentScreen = 0;

  /// liste des écrans
  final List<Widget> _screenList = [
    HomeScreen(),
    ListScreen(),
    TrucScreen(),
    SettingsScreen(),
    RoomScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Image.asset("assets/Passfood  (5) 1.jpg", width: 40, ),
    
),
      body: _screenList[_currentScreen],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.amber,
          iconSize: 35,
          fixedColor: Colors.red,
          unselectedItemColor: Colors.blueGrey,
          // options de présentation
          type: BottomNavigationBarType.fixed,
          // l'index
          currentIndex: _currentScreen,
          // l'écouteur
          onTap: onTabTapped,
          // liste de bouton
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Accueil"),
            BottomNavigationBarItem(icon: Icon(Icons.list), label: "Liste"),
            BottomNavigationBarItem(icon: Icon(Icons.alarm), label: "Truc"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Settings"),
            BottomNavigationBarItem(icon: Icon(Icons.room), label: "Room"),
          ]),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentScreen = index;
    });
  }
}
