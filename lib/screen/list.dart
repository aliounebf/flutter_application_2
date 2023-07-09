///
/// screen/list.dart
///
import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  //
  @override
  Widget build(BuildContext context) {
    //
    return SingleChildScrollView(
      padding: EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("C'est la liste"),
          SizedBox(height: 19),
          Divider(thickness: 22),

          /// @todo : la suite...
          Container(
            height: 300,
            margin: const EdgeInsets.symmetric(vertical: 15),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.blueAccent),
            ),
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Richard Carlier'),
                  subtitle: Text('75000 Paris - France'),
                  trailing: Icon(Icons.arrow_right),
                ),
                ListTile(
                  leading: SizedBox(height: 1),
                  title: Text('Richard Carlier'),
                  subtitle: Text('75000 Paris - France'),
                  trailing: Icon(Icons.arrow_right),
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Richard Carlier'),
                  // subtitle: Text('75000 Paris - France'),
                  // trailing: Icon(Icons.arrow_right),
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Richard Carlier'),
                  subtitle: Text('75000 Paris - France'),
                  trailing: Icon(Icons.arrow_right),
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Richard Carlier'),
                  subtitle: Text('75000 Paris - France'),
                  trailing: Icon(Icons.arrow_right),
                ),
              ],
            ),
          ),

          ///
          ///
          ///
          SizedBox(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                listImage('assets/sq0.jpg'),
                listImage('assets/sq1.jpg'),
                listImage('assets/sq2.jpg'),
                listImage('assets/sq3.jpg'),
                listImage('assets/sq4.jpg'),
                listImage('assets/sq5.jpg'),
              ],
            ),
          ),

          ///
          ///
          ///
          SizedBox(
            height: 240,
            child: GridView.count(
              crossAxisCount: 3,
              children: [
                Card(child: Image.asset('assets/bxl-1.jpg')),
                Card(child: Image.asset('assets/sq1.jpg')),
                Card(child: Image.asset('assets/sq2.jpg')),
                Card(child: Image.asset('assets/sq3.jpg')),
                Card(child: Image.asset('assets/sq4.jpg')),
                Card(child: Image.asset('assets/sq5.jpg')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Container listImage(String source) {
  return Container(
    margin: const EdgeInsets.only(right: 12),
    child: Image.asset(source),
  );
}
