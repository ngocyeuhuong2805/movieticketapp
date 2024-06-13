import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      child: SizedBox(
        height: size.height / 15,
        child: Row(
          children: [
            Expanded(
              child: Container(
                height: size.height / 15,
                decoration: BoxDecoration(
                  color: Colors.white30,
                  borderRadius: BorderRadius.circular(22),
                ),
                child: Row(
                  children: const [
                    Padding(
                        padding: EdgeInsets.only(left: 24, right: 12),
                        child: FaIcon(FontAwesomeIcons.search,
                            color: Colors.white, size: 20,)),
                    Expanded(
                        child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Search Movie',
                          hintStyle:
                              TextStyle(color: Colors.white, fontSize: 20, fontFamily: 'QuicksandSemiBold', fontWeight: FontWeight.w200),
                          border: InputBorder.none),
                    ))
                  ],
                ),
              ),
            ),
            Container(
              width: size.height / 15,
              height: size.height / 15,
              margin: const EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                  gradient: const LinearGradient(colors: [
                    Colors.indigo,
                    Colors.blue,
                  ]),
                  borderRadius: BorderRadius.circular(14)),
              child: const Center(
                child: FaIcon(
                  FontAwesomeIcons.bars,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
