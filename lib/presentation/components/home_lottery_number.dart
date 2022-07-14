import 'package:flutter/material.dart';
import '../../theme/my_color.dart';

class LotteryNumber extends StatelessWidget {
  LotteryNumber(this.number);
  final String number;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 35,
      height: 35,
      alignment: Alignment.bottomCenter,
      margin: const EdgeInsets.all(2),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: MyColors.blue,
      ),
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 3),
      child: Text(
          number,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 15.0,fontWeight: FontWeight.w700,color: MyColors.white) ),
    );
  }
}