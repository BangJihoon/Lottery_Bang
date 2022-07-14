import 'package:flutter/material.dart';
import 'package:lottery_bang/presentation/components/appbar_title_text.dart';
import 'package:lottery_bang/theme/my_color.dart';

class Screen_Login extends StatefulWidget {
  const Screen_Login({Key? key}) : super(key: key);

  @override
  State<Screen_Login> createState() => _Screen_LoginState();
}

class _Screen_LoginState extends State<Screen_Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(50.0),
          child:  Column(
            children: [
              TitleText(48.0,30.0),
              const Padding(
                padding: EdgeInsets.fromLTRB(0,0,0,30),
                child: Text(
                  '연동 로그인',
                  style: TextStyle(
                      fontSize: 23.0,
                      color: MyColors.grey_4
                  ),
                ),
              ),
              const TextField(
                decoration: InputDecoration(
                  labelText: '아이디',
                  labelStyle: TextStyle(color: MyColors.grey_4),
                  hintText: 'Enter your ID',
                  hintStyle: TextStyle(color: MyColors.grey_2),
                  enabledBorder: UnderlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(width: 1, color: MyColors.grey_2),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(width: 2, color: MyColors.blue),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                ),
                keyboardType: TextInputType.text,
              ),
              const TextField(
                decoration: InputDecoration(
                  labelText: '비밀번호',
                  labelStyle: TextStyle(color: MyColors.grey_4),
                  hintText: 'Enter your Password',
                  hintStyle: TextStyle(color: MyColors.grey_2),
                  enabledBorder: UnderlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(width: 1, color: MyColors.grey_2),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(width: 1, color: MyColors.blue),
                  ),
                  border: UnderlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                ),
                obscureText: true,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children : [
                  TextButton(onPressed: (){}, child: const Text("ID/PW 찾기")),
                ]
              ),
              SizedBox(height: 20.0,),
              SizedBox(
                width: 300.0,
                child: TextButton(onPressed: (){
                  print('123');
                },
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            side: BorderSide(color: Colors.blue)
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all<Color>(MyColors.blue),
                      padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(15.0)),
                    ),
                    child: const Text("로그인", style: TextStyle(color: MyColors.white, fontSize: 20.0),)
                ),
              ),
              SizedBox(height: 10.0,),
              SizedBox(
                width: 300.0,
                child: TextButton(onPressed: (){
                  print('123');
                },
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            side: BorderSide(color: Colors.blue)
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all<Color>(MyColors.white),
                      padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(15.0)),
                    ),
                    child: const Text("회원가입", style: TextStyle(color: MyColors.blue, fontSize: 20.0),)
                ),
              ),
              SizedBox(
                  height: 100.0,
                  child: TextButton(onPressed: (){Navigator.popAndPushNamed(context, '/home');}, child: Text("건너뛰기")))
            ],
          ),
        ),
      ),
    );
  }
}
