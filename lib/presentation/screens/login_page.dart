import 'package:flutter/material.dart';
import 'package:lottery_bang/theme/color.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(50.0),
        child:  Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            RichText(
                text: const TextSpan(
                    text: "동행",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 48,
                        color: FColors.orange),
                    children: [
                      TextSpan(
                          text: "복권",
                          style: TextStyle(color: FColors.logo))
                    ]),
              ),
            const Padding(
              padding: EdgeInsets.all(40.0),
              child: Text(
                '로그인',
                style: TextStyle(
                    fontSize: 23.0,
                    color: FColors.grey_4
                ),
              ),
            ),
            const TextField(
              decoration: InputDecoration(
                labelText: '아이디',
                labelStyle: TextStyle(color: FColors.grey_4),
                hintText: 'Enter your ID',
                hintStyle: TextStyle(color: FColors.grey_2),
                enabledBorder: UnderlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(width: 1, color: FColors.grey_2),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(width: 2, color: FColors.blue),
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
                labelStyle: TextStyle(color: FColors.grey_4),
                hintText: 'Enter your Password',
                hintStyle: TextStyle(color: FColors.grey_2),
                enabledBorder: UnderlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(width: 1, color: FColors.grey_2),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(width: 1, color: FColors.blue),
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
                    backgroundColor: MaterialStateProperty.all<Color>(FColors.blue),
                    padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(15.0)),
                  ),
                  child: const Text("로그인", style: TextStyle(color: FColors.white, fontSize: 20.0),)
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
                    backgroundColor: MaterialStateProperty.all<Color>(FColors.white),
                    padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(15.0)),
                  ),
                  child: const Text("회원가입", style: TextStyle(color: FColors.blue, fontSize: 20.0),)
              ),
            ),
            SizedBox(
                height: 100.0,
                child: TextButton(onPressed: (){Navigator.pushNamed(context, '/home');}, child: Text("건너뛰기")))
          ],
        ),
      ),
    );
  }
}

