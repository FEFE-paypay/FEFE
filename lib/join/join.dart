import 'package:fe/home/home.dart';
import 'package:flutter/material.dart';

class join extends StatefulWidget {
  const join({Key? key}) : super(key: key);

  @override
  State<join> createState() => _joinState();
}

class _joinState extends State<join> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _usernameController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.keyboard_backspace),
            color: Color(0xff000000)),
        title: Text("회원가입"),
        centerTitle: true,
        titleTextStyle: TextStyle(color: Color(0xff000000), fontSize: 20),
        backgroundColor: Color(0xffFEE500),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                child: Container(
                  height: 120,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xffFEE500),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "페이페이(FEpay)",
                        style: TextStyle(
                          fontSize: 40,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              TextField(
                controller: _usernameController,
                decoration: InputDecoration(
                  labelText: '이름',
                ),
              ),
              SizedBox(height: 16.0),
              TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: '패스워드',
                ),
              ),
              SizedBox(height: 16.0),
              Row(
                children: [
                  Expanded(
                    flex: 7,
                    child: TextField(
                      controller: _usernameController,
                      decoration: InputDecoration(
                        labelText: '주민등록번호',
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // 버튼이 클릭되었을 때의 동작
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.grey), // 배경 색상
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0), // 둥근 모서리 설정
                        ),
                      ),
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                    ),
                    child: Text('중복체크'),
                  )
                ],
              ),
              SizedBox(height: 16.0),
              Row(
                children: [
                  Expanded(
                    flex: 7,
                    child: TextField(
                      controller: _usernameController,
                      decoration: InputDecoration(
                        labelText: '이메일',
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // 버튼이 클릭되었을 때의 동작
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.grey), // 배경 색상
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0), // 둥근 모서리 설정
                        ),
                      ),
                      foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                    ),
                    child: Text('중복체크'),
                  )
                ],
              ),
              SizedBox(height: 16.0),
              TextField(
                controller: _usernameController,
                decoration: InputDecoration(
                  labelText: '이메일 인증코드',
                ),
              ),
              SizedBox(height: 16.0),
              TextField(
                controller: _usernameController,
                decoration: InputDecoration(
                  labelText: '패스워드',
                ),
              ),
              SizedBox(height: 16.0),
              TextField(
                controller: _usernameController,
                decoration: InputDecoration(
                  labelText: '패스워드 확인',
                ),
              ),
              SizedBox(height: 16.0),
              SizedBox(
                height: 25.0,
              ),
              ElevatedButton(
                onPressed: () {

                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50),
                  backgroundColor: Color(0xffFEE500),
                ),
                child: Text('회원가입',
                    style: TextStyle(
                      color: Color(0xff000000),
                    )),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
