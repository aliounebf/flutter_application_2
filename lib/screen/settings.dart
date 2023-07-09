///
/// screen/settings.dart
///
import 'package:flutter/material.dart';
import '../theme.dart';
import '../data.dart';

class SettingsScreen extends StatelessWidget {
  //
  @override
  Widget build(BuildContext context) {
    //

    return SingleChildScrollView(
      padding: EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Les réglages", style: heading),
          SizedBox(height: 19),
          Divider(thickness: 22),

          /// @todo : la suite...
          demoWrap(),
          demoListBuilder(),
          demoListSeparated(),
          demoListMap(),
        ],
      ),
    );
  }
}

class demoListMap extends StatelessWidget {
  const demoListMap({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: ListView.separated(
        itemCount: values.length,
        itemBuilder: (BuildContext ctxt, int index) {
          var article = values[index];
          return ListTile(
            leading: Image.asset("assets/${article["img"]}"),
            title: Text(article["name"]),
            subtitle: Text(article["description"]),
          );
        },
        separatorBuilder: (context, index) => Divider(color: Colors.amber),
      ),
    );
  }
}

class demoListSeparated extends StatelessWidget {
  const demoListSeparated({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.separated(
        itemCount: items.length, // nombre d'éléments
        itemBuilder: (BuildContext ctxt, int index) {
          return ListTile(
            leading: Icon(Icons.phone),
            title: Text(items[index]),
          );
        },
        separatorBuilder: (context, index) => const Divider(
          color: Colors.teal,
        ),
      ),
    );
  }
}

class demoListBuilder extends StatelessWidget {
  const demoListBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        itemExtent: 35, // hauteur
        itemCount: items.length, // nombre d'éléments
        itemBuilder: (BuildContext ctxt, int index) {
          return ListTile(
            leading: Icon(Icons.phone),
            title: Text(items[index]),
          );
        },
      ),
    );
  }
}

class demoWrap extends StatelessWidget {
  const demoWrap({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 5,
      children: [
        Chip(label: Text("Bruxelles")),
        Chip(label: Text("Belgique")),
        Chip(label: Text("Atomium")),
        Chip(label: Text("Manneken Pis")),
        Chip(label: Text("Sirop de Liège")),
      ],
    );
  }
}
