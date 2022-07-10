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
        body: SafeArea(
          child: Container(
            child: Center(
              child: Column(
                children: [
                  /// 추첨일자
                  const Padding(
                      padding : EdgeInsets.all(10.0),
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child:
                            Text(' 추첨일자 2022.07.08  ',
                            style: TextStyle(
                                color: FColors.grey_3,
                                fontSize: 11.0
                            ),
                          ),
                      ),
                  ),
                  /// 타이틀
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15,0,15,10),
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
                  /// 최근 7게임 번호
                  CarouselSlider(
                    carouselController: _controller,
                    options: CarouselOptions(
                        height: 100.0,
                        scrollDirection: Axis.horizontal,
                        enlargeCenterPage: true,
                        viewportFraction: 1.0
                    ),
                    items: [0, 1, 2, 3, 4, 5, 6 ,7 ].map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(color: FColors.black,);
                        }); //  <- 반복문을 이용한 contents를 만들어주었음 내용은 생략
                    }).toList(),
                  )
                ],
              ),
            ),
          ),
        ),
    );
  }
}

