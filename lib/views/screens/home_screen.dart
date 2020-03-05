import 'package:flutter/material.dart';
import 'dart:convert';

import '../../models/model.dart';

class HomeScreen extends StatefulWidget {
  static const String id = "home_screen";
  static const String title = "Home";

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
  void callJson(){

    var data = {
      "notes": [
        {
          "id": 1,
          "title": "title1",
          "desc": "desc1",
          "todo": ["todo1", "todo2"],
          "created": "now"
        },
        {
          "id": 2,
          "title": "title2",
          "desc": "desc2",
          "todo": ["todo3", "todo4"],
          "created": "later"
        }
      ]
    };

    // Notes myNotes = new Notes(1, "title", "desc", ["todo1", "todo2"], "created");
    List<Notes> myNotes = new List<Notes>.generate(data['notes'].length, (index) => Notes.fromJson(data['notes'][index]));
    String encodedNotes = jsonEncode(myNotes);

    print(myNotes);
    print(encodedNotes);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
        callJson();
      },
      child: Icon(Icons.add),
      backgroundColor: Colors.green,
      ),
    );
  }
}