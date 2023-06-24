import 'package:fe/main.dart';
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
  final PageController _pageController = PageController();
  final PageController _pageController2 = PageController();

  int _currentPage = 0;
  int _currentPage2 = 0;

  int _selectedButtonIndex = 0;
  int _selectedButtonIndex2 = 0;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      statusBarIconBrightness: Brightness.dark,
      statusBarColor: Colors.transparent,
    ));
    return Scaffold(
        body: SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
      child: Column(
        children: [
          WillPopScope(
            onWillPop: () => _onBackPressed(context),
            child: const Text(''),
          ),
          CarouselSlider(
            options: CarouselOptions(height: 200.0),
            items: [1, 2, 3, 4, 5].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(color: Colors.black12),
                      child: Text(
                        '광고 $i',
                        style: TextStyle(fontSize: 16.0),
                      ));
                },
              );
            }).toList(),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
            height: 200,
            width: double.infinity,
            color: Colors.black12,
            child: Text('가계 이미지'),
          ),
          Container(
              width: double.infinity,
              height: 50,
              child: Row(
                children: [
                  TextButton(
                      onPressed: () {
                        _pageController.animateToPage(
                          0,
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                        setState(() {
                          _selectedButtonIndex = 0;
                        });
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: _selectedButtonIndex == 0
                            ? Colors.black12
                            : Colors.transparent,
                      ),
                      child: Text(
                        "메뉴",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      )),
                  TextButton(
                      onPressed: () {
                        _pageController.animateToPage(
                          1,
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                        setState(() {
                          _selectedButtonIndex = 1;
                        });
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: _selectedButtonIndex == 1
                            ? Colors.black12
                            : Colors.transparent,
                      ),
                      child: Text(
                        "리뷰",
                        style: TextStyle(color: Colors.black),
                      )),
                  TextButton(
                      onPressed: () {
                        _pageController.animateToPage(
                          2,
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                        setState(() {
                          _selectedButtonIndex = 2;
                        });
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: _selectedButtonIndex == 2
                            ? Colors.black12
                            : Colors.transparent,
                      ),
                      child: Text(
                        "정보",
                        style: TextStyle(color: Colors.black),
                      )),
                ],
              )),
          Container(
            width: double.infinity,
            height: 300,
            child: PageView(
              controller: _pageController,
              onPageChanged: (int page) {
                setState(() {
                  _currentPage = page;
                });
              },
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextButton(
                              onPressed: () {
                                _pageController2.animateToPage(
                                  0,
                                  duration: const Duration(milliseconds: 300),
                                  curve: Curves.easeInOut,
                                );
                                setState(() {
                                  _selectedButtonIndex2 = 0;
                                });
                              },
                              style: TextButton.styleFrom(
                                backgroundColor: _selectedButtonIndex2 == 0
                                    ? Colors.black12
                                    : Colors.transparent,
                              ),
                              child: Text(
                                "추천",
                                style: TextStyle(color: Colors.black),
                              )),
                          TextButton(
                              onPressed: () {
                                _pageController2.animateToPage(
                                  1,
                                  duration: const Duration(milliseconds: 300),
                                  curve: Curves.easeInOut,
                                );
                                setState(() {
                                  _selectedButtonIndex2 = 1;
                                });
                              },
                              style: TextButton.styleFrom(
                                backgroundColor: _selectedButtonIndex2 == 1
                                    ? Colors.black12
                                    : Colors.transparent,
                              ),
                              child: Text(
                                "세트",
                                style: TextStyle(color: Colors.black),
                              )),
                          TextButton(
                              onPressed: () {
                                _pageController2.animateToPage(
                                  2,
                                  duration: const Duration(milliseconds: 300),
                                  curve: Curves.easeInOut,
                                );
                                setState(() {
                                  _selectedButtonIndex2 = 2;
                                });
                              },
                              style: TextButton.styleFrom(
                                backgroundColor: _selectedButtonIndex2 == 2
                                    ? Colors.black12
                                    : Colors.transparent,
                              ),
                              child: Text(
                                "메인",
                                style: TextStyle(color: Colors.black),
                              )),
                          TextButton(
                              onPressed: () {
                                _pageController2.animateToPage(
                                  3,
                                  duration: const Duration(milliseconds: 300),
                                  curve: Curves.easeInOut,
                                );
                                setState(() {
                                  _selectedButtonIndex2 = 3;
                                });
                              },
                              style: TextButton.styleFrom(
                                backgroundColor: _selectedButtonIndex2 == 3
                                    ? Colors.black12
                                    : Colors.transparent,
                              ),
                              child: Text(
                                "주류",
                                style: TextStyle(color: Colors.black),
                              )),
                          TextButton(
                              onPressed: () {
                                _pageController2.animateToPage(
                                  4,
                                  duration: const Duration(milliseconds: 300),
                                  curve: Curves.easeInOut,
                                );
                                setState(() {
                                  _selectedButtonIndex2 = 4;
                                });
                              },
                              style: TextButton.styleFrom(
                                backgroundColor: _selectedButtonIndex2 == 4
                                    ? Colors.black12
                                    : Colors.transparent,
                              ),
                              child: Text(
                                "직원호출",
                                style: TextStyle(color: Colors.black),
                              )),
                        ],
                      ),
                      Expanded(
                        child: PageView(
                          scrollDirection: Axis.vertical,
                          controller: _pageController2,
                          onPageChanged: (int page) {
                            setState(() {
                              _currentPage = page;
                            });
                          },
                          children: [
                            Container(
                              color: Colors.grey,
                              child: Center(
                                child: Text("추천"),
                              ),
                            ),
                            Container(
                              color: Colors.black12,
                              child: Center(
                                child: Text("세트"),
                              ),
                            ),
                            Container(
                              color: Colors.grey,
                              child: Center(
                                child: Text("메인"),
                              ),
                            ),
                            Container(
                              color: Colors.black12,
                              child: Center(
                                child: Text("주류"),
                              ),
                            ),
                            Container(
                              color: Colors.grey,
                              child: Center(
                                child: Text("직원호출중"),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.black12,
                  child: const Center(
                    child: Text("리뷰"),
                  ),
                ),
                Container(
                  color: Colors.grey,
                  child: const Center(
                    child: Text("가계정보"),
                  ),
                )
              ],
            ),
          ),
          Container(
            width: double.infinity,
            color: Colors.white54,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => const QRViewExample(),
                      ));
                    },
                    style: TextButton.styleFrom(
                        backgroundColor: Color.fromARGB(75, 255, 255, 255)),
                    child: Text(
                      "QR스캔",
                      style: TextStyle(color: Colors.black),
                    )),
                TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        backgroundColor: Color.fromARGB(75, 255, 255, 255)),
                    child: Text(
                      "검색",
                      style: TextStyle(color: Colors.black),
                    )),
                TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        backgroundColor: Color.fromARGB(75, 255, 255, 255)),
                    child: Text(
                      "이벤트",
                      style: TextStyle(color: Colors.black),
                    )),
                TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        backgroundColor: Color.fromARGB(75, 255, 255, 255)),
                    child: Text(
                      "장바구니",
                      style: TextStyle(color: Colors.black),
                    )),
                TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        backgroundColor: Color.fromARGB(75, 255, 255, 255)),
                    child: Text(
                      "개인정보",
                      style: TextStyle(color: Colors.black),
                    )),
              ],
            ),
          )
        ],
      ),
    ));
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
