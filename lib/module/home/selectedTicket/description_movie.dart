import 'package:flutter/material.dart';

import '../../../model/movie/movie.dart';
import 'movie_infor.dart';

class DescriptionMovie extends StatelessWidget {
  const DescriptionMovie({
    super.key,
    required this.size,
    required this.movie,
  });

  final Size size;
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24),
      padding: const EdgeInsets.symmetric(vertical: 24),
      decoration: const BoxDecoration(
          border: Border(
              bottom: BorderSide(color: Colors.white54, width: 1))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric( vertical: 5),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: SizedBox(
                width: size.width / 3.1,
                height: size.height / 4.5,
                child: Image.network(movie.image, fit: BoxFit.cover),
              ),
            ),
          ),
          MovieInfo(size: size),
        ],
      ),
    );
  }
}