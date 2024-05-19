import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:flutter_application_1/login.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'main.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Welcome1 extends StatefulWidget {
  const Welcome1({super.key});

  @override
  State<Welcome1> createState() => _Welcome1State();
}

class _Welcome1State extends State<Welcome1> {
  final CarouselController _carouselController = CarouselController();
  void _scrollToNext() {
    _carouselController.nextPage();
  }

  int i = 0;
  List<Widget> items = [
    Column(mainAxisAlignment: MainAxisAlignment.start, children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Image.asset(
          'assets/images/cake-1.jpg',
          width: 350,
          height: 259,
          fit: BoxFit.cover,
        ),
      ),
      const SizedBox(
        height: 50,
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: const [
          Text('Lorem',
              style: TextStyle(
                  color: Color(0xffAA80F1),
                  fontSize: 32,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w700)),
          SizedBox(height: 10),
          Text(
            'lorem ipsum dolor sit amet, consectur adipiscing elit, imperdiet elit massa arcu mauris facilis mattis.',
            style: TextStyle(
                fontSize: 18,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
          )
        ],
      )
    ]),
    Column(mainAxisAlignment: MainAxisAlignment.start, children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Image.asset(
          'assets/images/cake-2.jpg',
          width: 350,
          height: 259,
          fit: BoxFit.cover,
        ),
      ),
      const SizedBox(
        height: 50,
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: const [
          Text('Lorem',
              style: TextStyle(
                  color: Color(0xffAA80F1),
                  fontSize: 32,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w700)),
          SizedBox(height: 10),
          Text(
            'lorem ipsum dolor sit amet, consectur adipiscing elit, imperdiet elit massa arcu mauris facilis mattis.',
            style: TextStyle(
                fontSize: 18,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
          )
        ],
      )
    ]),
    Column(mainAxisAlignment: MainAxisAlignment.start, children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Image.asset(
          'assets/images/cake-3.jpg',
          width: 350,
          height: 259,
          fit: BoxFit.cover,
        ),
      ),
      const SizedBox(
        height: 50,
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: const [
          Text('Lorem',
              style: TextStyle(
                  color: Color(0xffAA80F1),
                  fontSize: 32,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w700)),
          SizedBox(height: 10),
          Text(
            'lorem ipsum dolor sit amet, consectur adipiscing elit, imperdiet elit massa arcu mauris facilis mattis.',
            style: TextStyle(
                fontSize: 18,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
          )
        ],
      )
    ])
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          Transform.rotate(
            angle: 15 * 3.1415926535897932 / 180,
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                opacity: 180,
                image: AssetImage('assets/images/bg.jpg'),
                fit: BoxFit.cover,
              )),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 36,
              ),
              CarouselSlider(
                  carouselController: _carouselController,
                  items: items,
                  options: CarouselOptions(
                    height: 500,
                    aspectRatio: 16 / 9,
                    viewportFraction: 1,
                    initialPage: 0,
                    enableInfiniteScroll: false,
                    reverse: false,
                    autoPlay: false,
                    enlargeCenterPage: false,
                    pageSnapping: true,
                    clipBehavior: Clip.none,
                    onPageChanged: (index, _) {
                      i = index;
                      setState(() {});
                    },
                    enlargeFactor: 0.3,
                    scrollDirection: Axis.horizontal,
                  )),
              const SizedBox(
                height: 10,
              ),
              AnimatedSmoothIndicator(
                activeIndex: i,
                count: 3,
                effect: const WormEffect(
                    activeDotColor: Color(0xffAA80F1),
                    dotHeight: 12,
                    dotWidth: 12),
              ),
              const SizedBox(
                height: 100,
              ),
              (i == 2)
                  ? InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Login()));
                      },
                      child: Container(
                        padding: const EdgeInsets.only(
                            bottom: 15, left: 125, right: 125, top: 15),
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Color(0xffAA80F1)),
                        child: const Text("Let's get started",
                            style: TextStyle(
                                color: Color.fromARGB(255, 249, 249, 250))),
                      ))
                  : Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Login()));
                            },
                            child: Container(
                              padding: const EdgeInsets.only(
                                  bottom: 15, left: 50, right: 50, top: 15),
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              ),
                              child: const Text('Skip',
                                  style: TextStyle(color: Color(0xffAA80F1))),
                            ),
                          ),
                          const SizedBox(
                            width: 35,
                          ),
                          InkWell(
                            onTap: () {
                              _scrollToNext();
                            },
                            child: Container(
                              padding: const EdgeInsets.only(
                                  bottom: 15, left: 50, right: 50, top: 15),
                              decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                  color: Color(0xffAA80F1)),
                              child: const Text('Next',
                                  style: TextStyle(
                                      color:
                                          Color.fromARGB(255, 249, 249, 250))),
                            ),
                          )
                        ]),
            ],
          )
        ],
      ),
    ));
  }
}
