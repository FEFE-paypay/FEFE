import 'package:fe/home/home.dart';
import 'package:fe/join/join.dart';
import 'package:fe/main.dart';
import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  var _checkBoxValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) =>MyHome()),
              );
            },
            icon: Icon(Icons.keyboard_backspace),
            color: Color(0xff000000)),
        title: Text("로그인"),
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
                  labelText: '이메일',
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
              SizedBox(
                height: 25.0,
              ),
              ElevatedButton(
                onPressed: () {
                  String username = _usernameController.text;
                  String password = _passwordController.text;
                  // Perform login validation here
                  if (username == 'user' && password == 'user') {
                    // Login successful
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              Home(message: DateTime.now().toString()),
                        ));
                  } else {
                    // Login failed
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Text('Error'),
                        content: Text('Invalid username or password.'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text('OK'),
                          ),
                        ],
                      ),
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50),
                  backgroundColor: Color(0xffFEE500),
                ),
                child: Text('로그인',
                    style: TextStyle(
                      color: Color(0xff000000),
                    )),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 120,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => join(),));
                      },
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.black,
                      ),
                      child: Text("회원가입"),
                    ),
                  ),
                  Row(
                    children: [
                      Transform.scale(
                        scale: 1.5,
                        child: Checkbox(
                          activeColor: Colors.white,
                          checkColor: Colors.black,
                          value: _checkBoxValue,
                          onChanged: (value) {
                            setState(() {
                              _checkBoxValue = value!;
                            });
                          },
                        ),
                      ),
                      Text("로그인정보 기억하기")
                    ],
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.black,
                      ),
                      child: Text("아이디 찾기")),
                  Text(" / "),
                  TextButton(onPressed: () {},style: TextButton.styleFrom(
                    foregroundColor: Colors.black,
                  ), child: Text("패스워드 찾기"))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CheckboxWidget extends StatefulWidget {
  const CheckboxWidget({super.key});

  @override
  State<CheckboxWidget> createState() => _CheckboxWidgetState();
}

class _CheckboxWidgetState extends State<CheckboxWidget> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.white10;
      }
      return Colors.white10;
    }

    return Checkbox(
      checkColor: Colors.black,
      fillColor: MaterialStateProperty.resolveWith(getColor),
      value: isChecked,
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
        });
      },
    );
  }
}
