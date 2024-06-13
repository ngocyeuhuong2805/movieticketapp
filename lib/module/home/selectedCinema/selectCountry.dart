import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SelectCountry extends StatelessWidget {
  const SelectCountry({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 24,
      ),
      height: size.height / 14,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.white),
      ),
      child: Row(
        children: const [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Select Your Country',
                hintStyle: TextStyle(fontSize: 15, color: Colors.white),
                icon: Padding(
                  padding: EdgeInsets.only(left: 12),
                  child: Icon(
                    FontAwesomeIcons.locationArrow,
                    size: 15,
                    color: Colors.white,
                  ),
                ),
                border: InputBorder.none,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 8),
            child: Icon(
              Icons.keyboard_arrow_down,
              color: Colors.white,
              size: 30,
            ),
          )
        ],
      ),
    );
  }
}