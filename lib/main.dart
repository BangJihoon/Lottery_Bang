import 'package:flutter/material.dart';
import 'package:lottery_bang/presentation/screens/home.dart';
import 'package:lottery_bang/presentation/screens/login_page.dart';
import 'package:lottery_bang/theme/color.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'FitQA',
      debugShowCheckedModeBanner: false,
      /// 앱 테마 설정
      theme: ThemeData(
        /// 기본 글꼴
        fontFamily: 'lottery_bang',
        /// 기본 배경
        backgroundColor: FColors.white,
        scaffoldBackgroundColor: FColors.white,
        /// 앱 바 색상
        primaryColor: FColors.blue,
        /// 기본 텍스트 스타일
        textTheme:  const TextTheme(
          bodyText1: TextStyle(
            color: FColors.grey_6,
            fontSize: 10.0,
          ),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/login': (context) => const LoginPage(),
        '/home': (context) => const Home(),
      },
      home: const LoginPage(),
    );
  }
}
