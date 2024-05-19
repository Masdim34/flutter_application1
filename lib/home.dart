import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_1/explore.dart';
import 'package:flutter_application_1/login.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _Activecolor = const Color(0xffAA80F1);
  Color _iconColor = Colors.black;

  void _onTap() {
    setState(() {
      _iconColor = _iconColor == Colors.black ? Colors.black : _Activecolor;
    });
  }

  void _onItemTapped(
    int index,
  ) {
    setState(() {
      _Activecolor = const Color(0xffAA80F1);
    });
  }

  @override
  void initState() {
    indexpage = 0;
    // TODO: implement initState
    super.initState();
  }

  int indexpage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
          child: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
            Stack(
              children: [
                Container(
                    width: 429, height: 136, color: const Color(0xffAA80F1)),
                Padding(
                    padding: const EdgeInsets.only(top: 68, left: 36),
                    child: Container(
                        margin: const EdgeInsets.only(bottom: 15, right: 36),
                        decoration: BoxDecoration(
                            color: const Color(0xffF0E6FF),
                            borderRadius: BorderRadius.circular(10)),
                        padding: const EdgeInsets.only(
                            bottom: 5, right: 36, left: 18),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Find cake or places',
                            contentPadding: const EdgeInsets.only(top: 5),
                            icon: SvgPicture.asset(
                                'assets/icons/bytesize_search.svg'),
                            border: InputBorder.none,
                          ),
                        ))),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 20),
              child: CarouselSlider(
                items: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Color(0xffFFB1C1)),
                        child: Image.asset('assets/images/butter1.png'),
                      ),
                      const Text(
                        'Buttercake',
                        style:
                            TextStyle(fontSize: 13, fontFamily: 'Montserrat'),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Color(0xffFFB1C1)),
                        child: Image.asset('assets/images/chiffon.png'),
                      ),
                      const Text(
                        'Chiffon',
                        style:
                            TextStyle(fontSize: 13, fontFamily: 'Montserrat'),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Color(0xffFFB1C1)),
                        child: Image.asset('assets/images/sponge.png'),
                      ),
                      const Text(
                        'Sponge',
                        style:
                            TextStyle(fontSize: 13, fontFamily: 'Montserrat'),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Color(0xffFFB1C1)),
                        child: Image.asset('assets/images/poundcake.png'),
                      ),
                      const Text(
                        'Poundcake',
                        style:
                            TextStyle(fontSize: 13, fontFamily: 'Montserrat'),
                      )
                    ],
                  )
                ],
                options: CarouselOptions(
                    scrollDirection: Axis.horizontal,
                    height: 100,
                    autoPlay: false,
                    pageSnapping: true,
                    viewportFraction: 0.25,
                    enableInfiniteScroll: true,
                    padEnds: false),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 36),
              child: Row(
                children: [
                  const Text('Lorem',
                      style: TextStyle(fontSize: 18, fontFamily: 'Montserrat')),
                  const SizedBox(
                    width: 10,
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Explore()));
                      },
                      child: SvgPicture.asset('assets/icons/Arrow-right.svg'))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)),
                      height: 148,
                      width: 356,
                      child: Image.asset('assets/images/Atas.png'),
                    ),
                    const Text(
                      'Lorem ipsum dolor sit amet',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 16,
                          fontWeight: FontWeight.w300),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ]),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 36),
              child: Row(
                children: [
                  const Text('Lorem',
                      style: TextStyle(fontSize: 18, fontFamily: 'Montserrat')),
                  const SizedBox(
                    width: 10,
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Explore()));
                      },
                      child: SvgPicture.asset('assets/icons/Arrow-right.svg'))
                ],
              ),
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 36),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)),
                      height: 148,
                      width: 356,
                      child: Image.asset('assets/images/bawah.png'),
                    ),
                    const Text(
                      'Lorem ipsum dolor sit amet',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 16,
                          fontWeight: FontWeight.w300),
                    ),
                  ],
                )),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: const BoxDecoration(
                  border: Border(
                      top: BorderSide(width: 0.2, color: Color(0xff646464)))),
              child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 9, horizontal: 36),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              indexpage = 0;
                              setState(() {});
                            },
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset('assets/icons/Home.svg',
                                      colorFilter: ColorFilter.mode(
                                          indexpage == 0
                                              ? _Activecolor
                                              : const Color(0xff646464),
                                          BlendMode.srcIn)),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Home',
                                    style: TextStyle(
                                        color: indexpage == 0
                                            ? _Activecolor
                                            : const Color(0xff646464)),
                                  )
                                ]),
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              indexpage = 1;
                              setState(() {});
                            },
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    'assets/icons/Clipboards.svg',
                                    colorFilter: ColorFilter.mode(
                                        (indexpage == 1
                                            ? _Activecolor
                                            : _iconColor),
                                        BlendMode.srcIn),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text('Activities',
                                      style: TextStyle(
                                          color: indexpage == 1
                                              ? _Activecolor
                                              : const Color(0xff646464)))
                                ]),
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              indexpage = 2;
                              setState(() {});
                            },
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                      'assets/icons/Message-circle.svg',
                                      colorFilter: ColorFilter.mode(
                                          (indexpage == 2
                                              ? _Activecolor
                                              : _iconColor),
                                          BlendMode.srcIn)),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text('Message',
                                      style: TextStyle(
                                          color: indexpage == 2
                                              ? _Activecolor
                                              : const Color(0xff646464)))
                                ]),
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              indexpage = 3;
                              setState(() {});
                            },
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset('assets/icons/User.svg',
                                      colorFilter: ColorFilter.mode(
                                          (indexpage == 3
                                              ? _Activecolor
                                              : _iconColor),
                                          BlendMode.srcIn)),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text('Profile',
                                      style: TextStyle(
                                          color: indexpage == 3
                                              ? _Activecolor
                                              : const Color(0xff646464)))
                                ]),
                          )
                        ],
                      ),
                    ],
                  )),
            )
          ]))),
    );
  }
}
