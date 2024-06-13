import 'package:flutter/material.dart';

import '../../../model/movie/caster.dart';

class CasterItem extends StatelessWidget {
  final Caster caster;
  const CasterItem({
    super.key,
    required this.caster,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, bottom: 4),
          child: Container(
            width: size.width / 4.5,
            height: size.width / 4.5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(
                image: NetworkImage(caster.image), // Display the first image of the caster
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Text(
          caster.name,
          style: const TextStyle(fontSize: 15),
        ),
      ],
    );
  }
}