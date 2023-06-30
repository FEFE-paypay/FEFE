import 'package:flutter/material.dart';

class Event extends StatefulWidget {
  const Event({super.key});

  @override
  State<Event> createState() => _EventState();
}

class _EventState extends State<Event> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('이벤트', style: TextStyle(color: Colors.black)),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, color: Colors.black),
        ), //메인으로 돌아가기
        backgroundColor: Colors.yellowAccent,
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 15),
            color: Colors.black,
            width: double.infinity,
            height: 100,
          ),
          Container(
            margin: EdgeInsets.only(top: 2),
            color: Colors.black,
            width: double.infinity,
            height: 100,
          ),
          Container(
            margin: EdgeInsets.only(top: 2),
            color: Colors.black,
            width: double.infinity,
            height: 100,
          ),
          Container(
            margin: EdgeInsets.only(top: 2),
            color: Colors.black,
            width: double.infinity,
            height: 100,
          ),
          Container(
            margin: EdgeInsets.only(top: 2),
            color: Colors.black,
            width: double.infinity,
            height: 100,
          ),
          Container(
            margin: EdgeInsets.only(top: 2),
            color: Colors.black,
            width: double.infinity,
            height: 100,
          ),
          Container(
            margin: EdgeInsets.only(top: 2),
            color: Colors.black,
            width: double.infinity,
            height: 100,
          )
        ],
      ),
    );
  }
}
