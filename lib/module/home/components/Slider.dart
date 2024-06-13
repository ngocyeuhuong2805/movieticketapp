import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:movie_ticket_app/model/movie/movie.dart';
import 'package:movie_ticket_app/module/home/components/starComponent.dart';
import 'package:movie_ticket_app/module/home/movieDetail/detail_movie.dart';
import 'package:movie_ticket_app/module/home/selectedCinema/selected_cinema.dart';

import '../../../model/category/category.dart';

class SliderBar extends StatelessWidget {

  final Size size;
  final List<Movie> movies;
  const SliderBar({
    Key? key,
    required this.size,
    required this.movies
  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        items: movies
            .map((movie) => Builder(builder: (context) {
          return GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) =>  SelectedCinema(size: size, movie: movie,)));
            },
            child: Stack(
              children: [
                Container(
                  width: size.width,
                  padding: const EdgeInsets.only(
                    left: 10,
                    bottom: 29,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      image: DecorationImage(
                        image: NetworkImage(movie.image),
                        fit: BoxFit.cover,
                      )),
                ),
                Container(
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.black12,
                            Colors.indigo,
                          ]),
                      borderRadius: BorderRadius.circular(14)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: size.width,
                        padding:
                        const EdgeInsets.only(bottom: 8, left: 8),
                        child: Text(
                          movie.name,
                          style: const TextStyle(
                              fontSize: 20,
                              fontFamily: 'QuickSandSemiBold'),
                        ),
                      ),
                      Container(
                        margin:
                        const EdgeInsets.only(bottom: 8, left: 8),
                        child: Row(
                          children: const [
                            StartComponent(),
                            StartComponent(),
                            StartComponent(),
                            StartComponent(),
                            StartComponent(),
                            Text('(5.0)', style: TextStyle(
                                fontFamily: 'QuickSandSemiBold',
                                fontSize: 15),)
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        }))
            .toList(),
        options: CarouselOptions(
            autoPlay: true, // cho ảnh chạy tự động
            enlargeCenterPage: true // set ảnh được hiển thị to nhất
        ));
  }
}