import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:lottery_bang/theme/color.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}
final CarouselController _controller = CarouselController();

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Container(
          child: Center(
            child: Column(
                children: [
                  /// 최근 7게임 번호
                  CarouselSlider(
                    carouselController: _controller,
                    options: CarouselOptions(
                        height: 250.0,
                        scrollDirection: Axis.horizontal,
                        enlargeCenterPage: true,
                        viewportFraction: 1.0,
                    ),
                    items: [0, 1, 2, 3, 4, 5, 6 ,7 ].map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Column(
                            children : [
                              /// 타이틀
                              Padding(
                                padding: const EdgeInsets.fromLTRB(15,30,15,3),
                                child: RichText(
                                  text: const TextSpan(
                                      style: TextStyle(color: FColors.blue,fontSize: 23.0, fontWeight: FontWeight.w500),
                                      text: '1024회차 ',
                                      children: [
                                        TextSpan(text: '당첨번호',style: TextStyle(color: FColors.black,fontSize: 23.0, fontWeight: FontWeight.w500))
                                      ]
                                  ),
                                ),
                              ),
                              /// 추첨일자
                              Align(
                                alignment: Alignment.center,
                                child:
                                Text(' 추첨일자 : 2022.07.09 (토)  21:00 ',
                                  style: TextStyle(
                                      color: FColors.grey_3,
                                      fontSize: 11.0
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  LotteryNumber('1'),
                                  LotteryNumber('12'),
                                  LotteryNumber('22'),
                                  LotteryNumber('33'),
                                  LotteryNumber('44'),
                                  LotteryNumber('45'),
                                  const Text(" + "),
                                  LotteryNumber('7'),
                                ],
                              ),
                              SizedBox(height: 25.0,),
                              const Text("1등\t 129,923,123원 \t(11명 당첨)"),
                              const Text("2등\t 19,923,123원 \t(30명 당첨)"),
                              const Text("3등\t 5,923,123원 \t(300명 당첨)"),
                            ]
                          );
                        }); //  <- 반복문을 이용한 contents를 만들어주었음 내용은 생략
                    }).toList(),
                  ),
                  Divider(color: Colors.black,)
                ],
              ),
            ),
          ),
        ),
    );
  }
}

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
        color: FColors.blue,
      ),
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 3),
      child: Text(
          number,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 15.0,fontWeight: FontWeight.w700,color: FColors.white) ),
    );
  }

}

