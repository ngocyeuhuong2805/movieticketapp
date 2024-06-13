import 'package:flutter/material.dart';
import 'package:movie_ticket_app/module/home/selectedCinema/headerCinema.dart';
import '../../../model/movie/movie.dart';
import 'description_movie.dart';


class CheckOutPage extends StatelessWidget {
  final Movie movie;
  const CheckOutPage({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            headerCinema(size: size, content: 'CheckOut\nMovie'),
            DescriptionMovie(size: size, movie: movie),
            buildPrice('ID Order', '12345678'),
            buildPrice('Cinema', 'Aeon Ha Dong'),
            buildPrice('Date & Time', 'Sun May 22, 16:40'),
            buildPrice('Seat Number', 'D7,D8,D9'),
            buildPrice('Price', 'Rp 50000 × 3'),
            buildPrice('Total Price', '150.000 VND'),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 24),
              decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: Colors.white54, width: 1))),

            ),
            buildYourWallet('Your Wallet', '200.000 VND'),
            Expanded(child: Center(
              child: Container(
                alignment: Alignment.center,
                height: size.height/16,
                width: size.width/2,
                decoration: BoxDecoration(
                  color: Colors.indigoAccent,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: const Text('Check Out', style: TextStyle(fontSize: 20, fontFamily: 'QuicksandMedium', fontWeight: FontWeight.w700),),
              ),
            ))



          ],
        ),
      ),
    );
  }

  Container buildPrice(String content, String price) {
    return Container(
            margin: const EdgeInsets.symmetric(horizontal: 24),
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(content, style: const TextStyle(fontSize: 17, fontFamily: 'QuicksandMedium'),),
                Text(price, style: const TextStyle(fontSize: 17, fontFamily: 'QuicksandMedium'),),
              ],
            ),

          );
  }
  Container buildYourWallet(String content, String price) {
    return Container(
      margin: const EdgeInsets.only(left: 24, right: 24, top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(content, style: const TextStyle(fontSize: 17, fontFamily: 'QuicksandMedium'),),
          Text(price, style: const TextStyle(fontSize: 17, fontFamily: 'QuicksandMedium', color: Colors.indigoAccent),),
        ],
      ),

    );
  }
}




