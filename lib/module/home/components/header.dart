import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 64, left: 24, right: 24),
      child: SizedBox(
        height: size.height / 10,
        child:  Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              'Book Movie\nTickets',
              style: TextStyle(fontSize: 30, fontFamily: 'OpenSansMedium'),
            ),
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('assets/images/user.png'),
            )
          ],
        ),
      ),
    );
  }
}