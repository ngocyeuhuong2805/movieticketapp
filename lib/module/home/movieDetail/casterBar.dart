import 'package:flutter/material.dart';

import '../../../model/movie/caster.dart';
import '../../../model/movie/movie.dart';
import 'casterItem.dart';

class CasterBar extends StatelessWidget {
  const CasterBar({
    super.key,
    required this.size,
    required this.movie,
  });

  final Size size;
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: movie.casters
            .map((caster) => Builder(builder: (context) {
          return CasterItem(
            size: size,
            caster: caster,
          );
        }))
            .toList(),
      ),
    );
  }
}