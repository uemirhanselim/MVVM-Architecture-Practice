import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  CardWidget({@required this.name, @required this.phone});
  String? name;
  String? phone;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        //leading: Icon(Icons.music_note),
        title: Text("$name\n$phone"),
      ),
      elevation: 8,
      shadowColor: Colors.green,
      margin: EdgeInsets.all(20),
    );
  }
}
