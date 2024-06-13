import 'package:flutter/material.dart';

class TitleMovie extends StatelessWidget {
  const TitleMovie({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 24, top: 8),
          child: const Text('Ralp Break the Internet', style: TextStyle(fontSize: 25),),
        ),
        Container(
          margin: const EdgeInsets.only(left: 24, top: 4),
          child: const Text('CGV Aeon', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400, color: Colors.grey),
          ),
        ),
      ],
    );
  }
}