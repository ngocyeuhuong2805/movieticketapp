import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/starComponent.dart';

class MovieInfo extends StatelessWidget {
  const MovieInfo({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(
                left: 25, bottom: 8),
            width: size.width,
            child: const Text(
              'Ngoc Dep Trai\nVcl',
              style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'QuicksandMedium'),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 25, bottom: 8),
            child: Row(
              children: const [
                StartComponent(),
                StartComponent(),
                StartComponent(),
                StartComponent(),
                StartComponent(),
                Text(
                  '(5.0)',
                  style: TextStyle(
                      fontSize: 13, fontFamily: 'QuicksandMedium'),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 25, bottom: 8),
            width: size.width,
            child: const Text('Phim hay k xem phí\ncả đời',
                style: TextStyle(
                    fontSize: 15, color: Colors.white54, fontFamily: 'QuicksandMedium')),
          ),
          Container(
            width: size.width,
            padding: const EdgeInsets.only(left: 25, bottom: 8),
            child: const Text(
              '1h41min',
              style: TextStyle(fontSize: 15, fontFamily: 'QuicksandMedium', color: Colors.white54),
            ),
          )
        ],
      ),
    );
  }
}