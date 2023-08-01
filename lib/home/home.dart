import 'package:fe/event/event.dart';
import 'package:fe/widget/hiddenappbar.dart';
import 'package:fe/widget/menu_review_info_button.dart';
import 'package:fe/widget/normal.dart';
import 'package:fe/widget/shopsign.dart';
import 'package:fe/widget/slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Home extends StatefulWidget {
  final String message;

  const Home({Key? key, required this.message}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
//dd
  int _currentIndex = 2;
  ScrollController scrollController= ScrollController();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      statusBarIconBrightness: Brightness.dark,
      statusBarColor: Colors.transparent,
    ));
    return SafeArea(
      child: Scaffold(

      //기존
        // Normal(),

        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 8.0,
          clipBehavior: Clip.antiAlias,
          child: Container(
            height: kBottomNavigationBarHeight,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                  top: BorderSide(
                    color: Colors.grey,
                    width: 0.5,
                  ),
                ),
              ),
              child: BottomNavigationBar(
                  type: BottomNavigationBarType.fixed,
                  currentIndex: _currentIndex,
                  backgroundColor: Colors.yellow,
                  selectedItemColor: Colors.black,
                  onTap: (index) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                  items: [
                    BottomNavigationBarItem(
                        icon: Container(
                          margin: EdgeInsets.symmetric(vertical: 1.0),
                          child: Icon(Icons.qr_code),
                        ),
                        label: 'QR스캔'),
                    BottomNavigationBarItem(
                        icon: Container(
                          margin: EdgeInsets.symmetric(vertical: 1.0),
                          child: Icon(Icons.search),
                        ),
                        label: 'Search'),
                    BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
                    BottomNavigationBarItem(
                        icon: Container(
                          margin: EdgeInsets.symmetric(vertical: 1.0),
                          child: IconButton(onPressed: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) => Home(message: "message"),
                            ));
                          }, icon: Icon(Icons.event))
                        ),
                        label: '이벤트'),
                    BottomNavigationBarItem(
                        icon: Container(
                          margin: EdgeInsets.symmetric(vertical: 1.0),
                          child: Icon(Icons.person),
                        ),
                        label: '개인정보'),
                  ]),
            ),            
        ),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniCenterDocked,
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(8.0),
          child: FloatingActionButton(
            backgroundColor: _currentIndex == 2 ? Colors.yellowAccent : Colors.yellow,
            child: Icon(Icons.shopping_bag_outlined,color: Colors.black),
            onPressed: () => setState(() {
              _currentIndex = 2;
            }),
          ),
        ),
      ),
    );
  }


}
