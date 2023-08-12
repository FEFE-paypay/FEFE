import 'package:flutter/material.dart';

class MyInfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('내 정보'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(16, 32, 16, 16),
              color: Colors.white,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/profile_image.png'),
                  ),
                  SizedBox(width: 16, height: 8),
                  Container(
                      child: Column(children: [
                        SizedBox(
                          height: 20,
                        ),
                        Text('내 닉네임', style: TextStyle(fontSize: 18)),
                        TextButton(
                          onPressed: () {
                            // 프로필 수정 페이지 이동
                          },
                          child: Text('프로필 수정'),
                        ),
                      ]))
                ],
              ),
            ),
            SizedBox(height: 16),
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
              childAspectRatio: 1.8,
              // 각 아이템의 가로:세로 비율 조정
              children: [
                MyInfoBox(icon: Icons.card_giftcard, label: '쿠폰'),
                MyInfoBox(icon: Icons.point_of_sale, label: '포인트'),
                MyInfoBox(icon: Icons.receipt, label: '주문 내역'),
                MyInfoBox(icon: Icons.rate_review, label: '리뷰 내역'),
              ],
            ),
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
              childAspectRatio: 3,
              // 각 아이템의 가로:세로 비율 조정
              children: [
                NoticeBox(label: '공지사항'),
                NoticeBox(label: '이벤트'),
                NoticeBox(label: '고객센터'),
                NoticeBox(label: '약관 및 정책'),
              ],
            ),
            GridView.count(
              crossAxisCount: 1,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
              childAspectRatio: 7.5,
              // 각 아이템의 가로:세로 비율 조정
              children: [
                NoticeBox(label: '업체등록'),
                NoticeBox(label: '내 업체 현황'),
              ],
            ),
          ],
        ),
      ),
      // bottomNavigationBar: BottomAppBar(
      //   child: Container(
      //     height: 56, // 원하는 높이로 조정
      //     child: Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //       children: [
      //         TextButton(
      //           onPressed: () {
      //             // Handle Scan QR action
      //           },
      //           child: Padding(
      //             padding: EdgeInsets.all(8), // 내부 패딩 조정
      //             child: Text('QR 스캔', style: TextStyle(color: Colors.black)),
      //           ),
      //         ),
      //         VerticalDivider(color: Colors.black),
      //         TextButton(
      //           onPressed: () {
      //             // Handle Cart action
      //           },
      //           child: Padding(
      //             padding: EdgeInsets.all(8), // 내부 패딩 조정
      //             child: Text('장바구니', style: TextStyle(color: Colors.black)),
      //           ),
      //         ),
      //         VerticalDivider(color: Colors.black),
      //         TextButton(
      //           onPressed: () {
      //             // Handle My Info action
      //           },
      //           child: Padding(
      //             padding: EdgeInsets.all(8), // 내부 패딩 조정
      //             child: Text('내 정보', style: TextStyle(color: Colors.black)),
      //           ),
      //         ),
      //       ],
      //     ),
      //   ),
      //   color: Colors.yellow, // AppBar의 배경색 설정
      // ),
    );
  }
}

class MyInfoBox extends StatelessWidget {
  final IconData icon;
  final String label;

  MyInfoBox({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey), // 경계선 스타일 설정
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 20),
          SizedBox(height: 4),
          Text(label, style: TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}

class NoticeBox extends StatelessWidget {
  final String label;
  final Color backgroundColor;

  NoticeBox({required this.label, this.backgroundColor = Colors.grey});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey), // 경계선 스타일 설정
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(label, style: TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}
