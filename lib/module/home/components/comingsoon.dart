import 'package:flutter/material.dart';

import '../../../model/movie/caster.dart';
import '../../../model/movie/movie.dart';
import '../movieDetail/detail_movie.dart';

class ComingSoon extends StatelessWidget {
  const ComingSoon({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: movies.map((movie) {
            return GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) =>  DetailMovie(movie: movie),));
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10)),
                margin: const EdgeInsets.symmetric(horizontal: 4),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: Image.network(
                    movie.image,
                    width: size.width / 3.6,
                    height: size.height / 5,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}