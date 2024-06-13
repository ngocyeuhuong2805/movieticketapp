import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movie_ticket_app/config/text/textMovie.dart';
import 'package:movie_ticket_app/model/movie/caster.dart';
import 'package:movie_ticket_app/model/movie/movie.dart';
import 'package:movie_ticket_app/module/home/components/starComponent.dart';
import 'package:movie_ticket_app/module/home/movieDetail/trailerbar.dart';

import 'arrow_back.dart';
import 'backGroundMovie.dart';
import 'casterBar.dart';
import 'casterItem.dart';

class DetailMovie extends StatefulWidget {
  final Movie movie;
  const DetailMovie({Key? key, required this.movie}) : super(key: key);
  @override
  State<DetailMovie> createState() => _DetailMovieState();
}

class _DetailMovieState extends State<DetailMovie> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            BackgroundDetailMovie(size: size, movie: widget.movie),
            Container(
              width: size.height / 3.5,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0x1500000B),
                    Color(0xFF0A1972),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
            ArrowBack(),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 24, top: size.height / 4.5),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: SizedBox(
                          width: size.width / 2.5,
                          height: size.height / 4,
                          child: Image.network(widget.movie.image,
                              fit: BoxFit.cover),
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(
                                  left: 20, bottom: 8, top: 20),
                              width: size.width,
                              child: const Text(
                                'Ngoc Dep Trai\nVcl',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Roboto'),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 20, bottom: 8),
                              child: Row(
                                children: const [
                                  StartComponent(),
                                  StartComponent(),
                                  StartComponent(),
                                  StartComponent(),
                                  StartComponent(),
                                  Text(
                                    '(5.0)',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              padding:
                                  const EdgeInsets.only(left: 20, bottom: 8),
                              width: size.width,
                              child: const Text('Phim hay k xem phí cả đời',
                                  style: TextStyle(
                                      fontSize: 15, color: Color(0xCCFFFFFF))),
                            ),
                            Container(
                              width: size.width,
                              padding:
                                  const EdgeInsets.only(left: 20, bottom: 8),
                              child: const Text(
                                '1h41min',
                                style: TextStyle(fontSize: 15),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: size.height,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: size.height / 2),
                    alignment: Alignment.center,
                    width: size.width,
                    child: TabBar(
                        tabs: const [
                          Text('About Movie'),
                          Text('ReView'),
                        ],
                        controller: _tabController,
                        indicatorSize: TabBarIndicatorSize.label,
                        labelStyle: const TextStyle(fontSize: 20),
                        unselectedLabelStyle: const TextStyle(),
                        indicatorColor: Colors.white,
                        indicatorPadding: const EdgeInsets.only(top: 10)),
                  ),
                  Expanded(
                    child: TabBarView(
                      controller: _tabController,
                      children: [
                        ListView(
                          children: [
                            Description('Synopsis'),
                            const Padding(
                              padding: EdgeInsets.only(left: 24),
                              child: Text(
                                TxtStyle.des,
                                style:
                                    TextStyle(fontSize: 15, wordSpacing: 1.5),
                              ),
                            ),
                            Description('Cast & Crew'),
                            CasterBar(size: size, movie: widget.movie),
                            Description('Trailer and song'),
                            const TrailerBar()
                          ],
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: const Text('Review Page'),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Padding Description(String content) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Text(
        content,
        style: const TextStyle(fontSize: 20),
      ),
    );
  }
}




