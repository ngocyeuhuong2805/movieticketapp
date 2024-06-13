import 'package:flutter/material.dart';
import 'package:movie_ticket_app/model/movie/movie.dart';

class BackgroundDetailMovie extends StatelessWidget {
  const BackgroundDetailMovie({
    super.key,
    required this.size,
    required this.movie,
  });

  final Size size;
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: size.height / 3.5,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(movie.background),
              fit: BoxFit.cover,
            ),
              gradient: const LinearGradient(
                colors: [
                  Color(0xFF0A1972),
                  Color(0x1500000B),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              )
          ),
        ),
        Container(
          height: size.height / 3.5,
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
      ],
    );
  }
}