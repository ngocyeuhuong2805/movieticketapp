import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class headerCinema extends StatelessWidget {
  final String content;
  const headerCinema({

    super.key,
    required this.size,
    required this.content
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: size.height / 10,
          child:  Center(
            child: Text(
              content,
              style: TextStyle(fontSize: 28),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        IconButton(
          padding: const EdgeInsets.only(left: 16, top: 4),
          icon: const FaIcon(FontAwesomeIcons.arrowLeft,
              color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}