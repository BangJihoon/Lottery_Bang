import 'package:flutter/material.dart';
import 'package:lottery_bang/theme/my_color.dart';

class TitleText extends StatelessWidget {
  TitleText(this.fontValue, this.paddingValue);

  final double fontValue;
  final double paddingValue;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(paddingValue),
      child: RichText(
        text: TextSpan(
            text: "동행",
            style: TextStyle(
                fontWeight: FontWeight.w700,
                color: MyColors.orange,
                fontSize: fontValue),
            children: const [
              TextSpan(
                  text: "복권",
                  style: TextStyle(color: MyColors.logo))
            ]),
      ),
    );
  }

}

