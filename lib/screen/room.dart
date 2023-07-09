///
/// screen/room.dart
///
import 'package:flutter/material.dart';

import '../model/room.dart';
import 'roomdetail.dart';

class RoomScreen extends StatelessWidget {
  final RoomHttp roomHttp = RoomHttp();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Locations"),
        backgroundColor: Colors.amber.shade600,
      ),
      body: FutureBuilder(
        future: roomHttp.getAll(),
        builder: (BuildContext context, AsyncSnapshot<List<Room>> snapshot) {
          if (snapshot.hasData) {
            List<Room>? rooms = snapshot.data;
            return ListView(
              children: rooms!
                  .map((Room room) => ListTile(
                        leading: Image.network(room.image),
                        title: Text(room.nom),
                        subtitle: Text("${room.tarif} € / semaine"),
                        trailing: Icon(Icons.arrow_right),
                        onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => RoomDetail(
                              room: room,
                            ),
                          ),
                        ),
                      ))
                  .toList(),
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
