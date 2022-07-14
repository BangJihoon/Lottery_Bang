import 'package:flutter/material.dart';
import 'package:lottery_bang/presentation/screens/home.dart';
import 'package:lottery_bang/presentation/screens/screen_login_page.dart';
import 'package:lottery_bang/presentation/screens/screen_notification.dart';
import 'package:lottery_bang/theme/my_color.dart';

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
        // 앱 바 설정
        appBarTheme: const AppBarTheme(color : MyColors.white, foregroundColor: MyColors.grey_5),
        primaryColor: MyColors.white,
        // 기본 글꼴
        fontFamily: 'lottery_bang',
        // 기본 배경
        backgroundColor: MyColors.white,
        scaffoldBackgroundColor: MyColors.white,
        // 기본 텍스트 스타일
        textTheme:  const TextTheme(
          bodyText1: TextStyle(
            color: MyColors.grey_6,
            fontSize: 10.0,
          ),
        ),
      ),
      /// routes 설정
      initialRoute: '/',
      routes: {
        '/login': (context) => const Screen_Login(),
        '/home': (context) => const Home(),
        '/notification' : (context) => const Screen_Notification(),
      },
      home: const Screen_Login(),
    );
  }
}
