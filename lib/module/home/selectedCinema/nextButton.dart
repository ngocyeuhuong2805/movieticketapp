import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class nextButton extends StatelessWidget {
  final VoidCallback onTap;
   const nextButton({
    super.key, required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16),
      child: ElevatedButton(
        onPressed: onTap,

          // Add your logic here
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          padding: const EdgeInsets.all(20),
        ),
        child: const Icon(
          FontAwesomeIcons.arrowRight,
          color: Colors.white,
          size: 25,
        ),
      ),
    );
  }
}