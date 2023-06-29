import 'package:fe/widget/menu_review_info_button.dart';
import 'package:fe/widget/shopsign.dart';
import 'package:fe/widget/slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Normal extends StatefulWidget {
  const Normal({Key? key}) : super(key: key);

  @override
  State<Normal> createState() => _NormalState();
}

class _NormalState extends State<Normal> {
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
      child: Column(
        children: [
          //취소
          WillPopScope(
            onWillPop: () => _onBackPressed(context),
            child: const Text(''),
          ),
          //광고
          SliderWedget(),
          //가계 간판
          ShopSign(),
          //버튼 container
          Menu_Review_Info_Button(),
        ],
      ),
    );
  }
  Future<bool> _onBackPressed(BuildContext context) async {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Exit App'),
        content: const Text('앱을 종료하시겠습니까??'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: const Text('No'),
          ),
          TextButton(
            onPressed: () {
              SystemNavigator.pop(); // 앱 종료
            },
            child: const Text('Yes'),
          ),
        ],
      ),
    ).then((value) => value ?? false);
  }
}
