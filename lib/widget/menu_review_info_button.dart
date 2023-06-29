import 'package:flutter/material.dart';

class Menu_Review_Info_Button extends StatefulWidget {
  const Menu_Review_Info_Button({Key? key}) : super(key: key);

  @override
  State<Menu_Review_Info_Button> createState() => _Menu_Review_Info_ButtonState();
}

class _Menu_Review_Info_ButtonState extends State<Menu_Review_Info_Button> {
  final PageController _pageController = PageController();
  final PageController _pageController2 = PageController();

  int _currentPage = 0;
  int _currentPage2 = 0;

  int _selectedButtonIndex = 0;
  int _selectedButtonIndex2 = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
            )
        ),
        Container(
          width: double.infinity,
          height: 400,
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
      ],
    );
  }
}
