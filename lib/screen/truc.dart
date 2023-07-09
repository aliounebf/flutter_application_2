///
/// screen/truc.dart
///
import 'package:flutter/material.dart';

class TrucScreen extends StatelessWidget {
  //
  @override
  Widget build(BuildContext context) {
    //
    return SingleChildScrollView(
      padding: EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Un truc..."),
          SizedBox(height: 19),
          // Divider(thickness: 22),

          /// @todo : la suite...

          /// Stack
          imageStack('assets/bxl-1.jpg', "Palais de la Nation"),
          imageStack('assets/bxl-2.jpg', "Jardin Botanique"),
          imageStack('assets/bxl-3.jpg', "Atomium"),
          imageStack('assets/bxl-4.jpg', "Mont des arts"),
          imageStack('assets/bxl-5.jpg', "Manneken-Pis"),
        ],
      ),
    );
  }

  // Sélectionner Stack, click droit : refactor > Wrap Padding
  // modifier type de retour
  Padding imageStack(String imageName, String labelText) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Stack(
        children: <Widget>[
          Container(
            height: 300,
            margin: EdgeInsets.only(bottom: 20),
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage(imageName),
                  fit: BoxFit.fitHeight,
                )),
          ),
          //
          Positioned(
            bottom: 40,
            left: 20,
            right: 20,
            child: Container(
              // height: 30,
              decoration: new BoxDecoration(
                color: Colors.white.withOpacity(0.75),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Text(labelText),
              ),
            ),
          )
        ],
      ),
    );
  }
}
