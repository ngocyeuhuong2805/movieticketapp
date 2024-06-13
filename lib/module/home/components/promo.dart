import 'package:flutter/material.dart';

class Promo extends StatelessWidget {
  const Promo({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, bottom: 12),
      child: Container(
        height: size.height / 8,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          gradient: const LinearGradient(
            colors: [
              Colors.indigoAccent,
              Colors.indigo,
            ],
          ),
        ),
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Student Holiday',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'QuicksandSemiBold',
                      ),
                    ),
                    Text(
                      'Special discounts for students!',
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'QuicksandSemiBold',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
                child: Center(
                  child: RichText(
                    text: const TextSpan(children: [
                      TextSpan(
                        text: 'OFF',
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'QuicksandSemiBold',
                        ),
                      ),
                      TextSpan(
                        text: '50%',
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'QuicksandSemiBold',
                        ),
                      )

                    ]),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
