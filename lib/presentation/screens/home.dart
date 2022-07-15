import 'package:flutter/material.dart';
import 'package:lottery_bang/presentation/components/appbar_title_text.dart';
import 'package:lottery_bang/presentation/screens/screen_home.dart';
import 'package:lottery_bang/presentation/screens/screen_login_page.dart';
import 'package:lottery_bang/presentation/screens/screen_notification.dart';
import 'package:lottery_bang/theme/my_color.dart';
import 'package:lottery_bang/theme/my_icons.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// 상단 바
      appBar: AppBar(
        // 기본설정 (그림자 경계 없애기)
          bottomOpacity: 0.0,
          elevation: 0.0,
        // title
        centerTitle: true,
        title: TitleText(24.0, 10.0),
        // 알림 액션
        actions : [
          IconButton(
            icon: const Icon(MyIcons.notification),
            tooltip: '알림',
            onPressed: (){
              Navigator.pushNamed(context, '/notification');
            },
          ),
        ]
      ),
      /// 메인 컨텐츠
      body: currentScreen(_selectedIndex),
      /// 하단 바
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: MyColors.blue,
        unselectedItemColor: MyColors.grey_5,
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(label: '홈', icon: Icon(MyIcons.home)),
          BottomNavigationBarItem(label: '구매', icon: Icon(Icons.credit_score)),
          BottomNavigationBarItem(label: '통계', icon: Icon(Icons.leaderboard,)),
          BottomNavigationBarItem(label: '마이페이지', icon: Icon(Icons.person,)),
        ],
        onTap: (index) {
          _onItemTapped(index);
        },
      ),
      /// 플로팅 버튼 (QR 스캔)
    );
  }

  /// 컨텐츠 전환
  Widget currentScreen(int index) {
    switch (index) {
      case 0:
        return Screen_Home();
      case 1:
        return Screen_Home();
      case 2:
        return Screen_Notification();
      default:
        return Screen_Login();
    }
  }
}




