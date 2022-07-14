import 'package:flutter/material.dart';
import 'package:lottery_bang/theme/my_color.dart';

class FitqaAppbarNotification extends StatelessWidget {
  const FitqaAppbarNotification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: MyColors.grey_0,
        centerTitle: true,
        elevation: 0,
        title: RichText(
          text: const TextSpan(
            text: "알람",
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 15,
                color: MyColors.black),
          ),
        ));
  }
}
