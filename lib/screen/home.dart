///
/// screen/home.dart
///

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  //
  @override
  Widget build(BuildContext context) {
    //
    return SingleChildScrollView(
      padding: EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text("Home"),
          const SizedBox(height: 19),
          const Divider(thickness: 22, color: Colors.teal),
          //
          //
          const SizedBox(height: 19),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.accessibility),
              SizedBox(width: 19),
              Text("Richnou is great")
            ],
          ),

          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/bxl-1.jpg", width: 40),
              const SizedBox(width: 19),
              const Text("Richnou is great")
            ],
          ),

          ///
          /// Just Do It :
          ///
          ///
          const SizedBox(height: 19),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.account_box_sharp),
              SizedBox(width: 19),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Coucou"),
                  Text("Coucou"),
                ],
              )
            ],
          ),
          // Images
          Image.asset("assets/bxl-1.jpg", width: 300, height: 300),

          Center(
            child: Image.asset("assets/bxl-1.jpg", width: 300, height: 300),
          ),

          Image.network('https://img.att.ovh/brussels-expo.jpg'),

          /// @todo : la suite...
        ],
      ),
    );
  }
}
