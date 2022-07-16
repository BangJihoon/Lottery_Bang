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
        scaffoldBackgroundColor: MyColors.white,
        primarySwatch: Colors.blue,
        fontFamily: 'lottery_bang',
        // primaryColor: MyColors.white,
        // backgroundColor: MyColors.white,
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
        '/login': (context) => Screen_Login(),
        '/home': (context) => Home(),
        '/notification' : (context) => Screen_Notification(),
      },
      home: Screen_Login(),
    );
  }
}
