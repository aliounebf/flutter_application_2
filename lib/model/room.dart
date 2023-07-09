///
/// model/room.dart
///
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../config.dart';

class Room {
  String roomID;
  String image;
  String description;
  String nom;
  String tarif;

  Room(
      {required this.roomID,
      required this.image,
      required this.description,
      required this.nom,
      required this.tarif});

  factory Room.fromJson(Map<String, dynamic> json) {
    return Room(
      roomID: json['roomID'],
      image: json['image'],
      description: json['description'],
      nom: json['nom'],
      tarif: json['tarif'],
    );
  }
}

class RoomHttp {
  Future<List<Room>> getAll() async {
    final res = await http.get(appartURL);
    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);
      List<Room> datas = body
          .map(
            (dynamic item) => Room.fromJson(item),
          )
          .toList();
      return datas;
    } else {
      throw "Error.";
    }
  }
}
