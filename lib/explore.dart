import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_1/home.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Explore extends StatefulWidget {
  const Explore({super.key});

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 136,
                width: 429,
                decoration: const BoxDecoration(color: Color(0xffAA80F1)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, top: 80),
                child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Home()));
                    },
                    child: SvgPicture.asset('assets/icons/Arrow-left.svg')),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 36, top: 110, right: 36),
                child: Container(
                    padding:
                        const EdgeInsets.only(bottom: 5, right: 36, left: 18),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xffFFFEFE),
                        border: Border.all(
                            color: const Color(0xffE1CFFF), width: 1)),
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(top: 5),
                        border: InputBorder.none,
                        hintText: 'Find cake or places',
                        icon: SvgPicture.asset(
                            'assets/icons/bytesize_search.svg'),
                      ),
                    )),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 18),
            child: StaggeredGrid.count(
              crossAxisCount: 3,
              crossAxisSpacing: 1.5,
              mainAxisSpacing: 1.5,
              children: [
                StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 1,
                  child: Image.asset('assets/images/32.png'),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 1,
                  child: Image.asset('assets/images/33.png'),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 1,
                  child: Image.asset('assets/images/34.png'),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 1,
                  child: Image.asset('assets/images/35.png'),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 1,
                  child: Image.asset('assets/images/36.png'),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 1,
                  child: Image.asset('assets/images/37.png'),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 1,
                  child: Image.asset('assets/images/38.png'),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 1,
                  child: Image.asset('assets/images/39.png'),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 1,
                  child: Image.asset('assets/images/40.png'),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 1,
                  child: Image.asset('assets/images/41.png'),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 1,
                  child: Image.asset('assets/images/42.png'),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 1,
                  child: Image.asset('assets/images/43.png'),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 1,
                  child: Image.asset('assets/images/44.png'),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 1,
                  child: Image.asset('assets/images/45.png'),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 1,
                  child: Image.asset('assets/images/46.png'),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 1,
                  child: Image.asset('assets/images/47.png'),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 1,
                  child: Image.asset('assets/images/48.png'),
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 1,
                  child: Image.asset('assets/images/49.png'),
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
