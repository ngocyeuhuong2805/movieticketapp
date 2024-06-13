import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../model/movie/caster.dart';
import '../../../model/movie/movie.dart';

class TrailerBar extends StatefulWidget {
  const TrailerBar({
    super.key,
  });

  @override
  State<TrailerBar> createState() => _TrailerBarState();
}

class _TrailerBarState extends State<TrailerBar> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: movies
            .map((movie) => Builder(builder: (context) {
          return Padding(
            padding: const EdgeInsets.only(left: 24),
            child: Stack(
              children: [
                Container(
                  height: 160,
                  width: 260,
                  decoration: BoxDecoration(
                      borderRadius:
                      BorderRadius.circular(
                          16),
                      image: DecorationImage(
                          image: NetworkImage(
                              movie.image),
                          fit: BoxFit.cover)),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 160,
                  width: 260,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            Colors.black54,
                            Colors.transparent,
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter
                      )
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    // play something
                  },
                  child: SizedBox(
                    height: 160,
                    width: 260,
                    child: Container(
                      margin: const EdgeInsets.symmetric(vertical: 56),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.indigo,
                      ),
                      child: const Center(child: Icon(FontAwesomeIcons.play, color: Colors.white, size: 15,)),
                    ),
                  ),
                )
              ],
            ),
          );
        }))
            .toList(),
      ),
    );
  }
}