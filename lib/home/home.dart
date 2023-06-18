import 'package:fe/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Home extends StatelessWidget {
  final String message;
  const Home({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(      
      body: Container(
        padding: EdgeInsets.fromLTRB(0,60,0,0),
        child: WillPopScope(
          onWillPop: () => _onBackPressed(context),
          child: Column(
            children: <Widget>[
              Text('하이 ${message}'),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const QRViewExample(),
                  ));
                },
                child: const Text('qrView'),
              ),
            ],
          ),
        ),
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
