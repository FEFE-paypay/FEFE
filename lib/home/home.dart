import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final String message;
  const Home({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Text(message),
    );
  }
}
