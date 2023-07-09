///
/// screen/roomdetail.dart
///
import 'package:flutter/material.dart';
import '../model/room.dart';

class RoomDetail extends StatelessWidget {
  final Room room;
  RoomDetail({required this.room});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(room.nom),
      ),
      body: Column(
        children: [
          RoomDetailStack(),
          RoomDetailText(),
        ],
      ),
    );
  }

  Expanded RoomDetailText() => Expanded(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(30),
          child: Text(
            room.description,
            style: TextStyle(fontSize: 20),
          ),
        ),
      );

  Stack RoomDetailStack() => Stack(
        children: [
          Image.network(room.image),
          Text(room.tarif),
        ],
      );
}
