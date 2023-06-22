import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  int _selectedSegment = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Page'),
        backgroundColor: Colors.blue, // 배경색 설정
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _selectedSegment = 0;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    primary:
                    _selectedSegment == 0 ? Colors.blue : Colors.grey,
                  ),
                  child: const Text('Midnight'),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _selectedSegment = 1;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    primary:
                    _selectedSegment == 1 ? Colors.blue : Colors.grey,
                  ),
                  child: const Text('Viridian'),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _selectedSegment = 2;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    primary:
                    _selectedSegment == 2 ? Colors.blue : Colors.grey,
                  ),
                  child: const Text('Cerulean'),
                ),
              ],
            ),
          ),
          Expanded(
            child: Center(
              child: Text(
                'Selected Segment: $_selectedSegment',
                style: const TextStyle(color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
