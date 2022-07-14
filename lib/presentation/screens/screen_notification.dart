import 'package:flutter/material.dart';
import 'package:lottery_bang/presentation/components/appbar_notification.dart';
import 'package:lottery_bang/presentation/components/notification_notibox.dart';
import 'package:lottery_bang/theme/my_color.dart';
class Screen_Notification extends StatelessWidget {
  const Screen_Notification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const FitqaAppbarNotification(),
              NotiBox('2022.04.13 (수)'),
              NotiBox('2022.04.12 (화)'),
              NotiBox('2022.04.11 (월)'),
            ],
          ),
        ],
      ),
    );
  }
}
