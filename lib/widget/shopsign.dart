import 'package:flutter/material.dart';

class ShopSign extends StatefulWidget {
  const ShopSign({Key? key}) : super(key: key);

  @override
  State<ShopSign> createState() => _ShopSignState();
}

class _ShopSignState extends State<ShopSign> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
      height: 200,
      width: double.infinity,
      color: Colors.black12,
      child: Text('가계 이미지'),
    );
  }
}
