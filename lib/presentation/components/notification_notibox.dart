import 'package:flutter/material.dart';
import 'package:lottery_bang/domain/enum/notification_type.dart';
import 'package:lottery_bang/theme/my_color.dart';

class NotiBox extends StatelessWidget {
  String _date;
  NotiBox(this._date);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            _date,
            style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 15.0, color: MyColors.blue),
          ),
          const Divider(
            thickness: 1.0,
            height: 14.0,
            color: MyColors.grey_3,
          ),
          NofiBoxDateRow('강이록', '1', NotiType.likey),
          NofiBoxDateRow('강이록', '2', NotiType.comment),
          NofiBoxDateRow('강이록', '3', NotiType.feedback),
        ],
      ),
    );
  }

  Widget NofiBoxDateRow(String _userName, String _time, NotiType _notiType) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage('assets/images/logo.jpg'),
          ),
          const SizedBox(width: 20.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    text: _userName,
                    style: const TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w700,
                        color: Colors.blue),
                    children: [
                      TextSpan(
                        text: _notiType.toStringType(),
                        style: const TextStyle(
                            color: MyColors.black, fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                ),
                Text(
                  '$_time시간전',
                  style: const TextStyle(color: MyColors.grey_3, fontSize: 12),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

}
