import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movie_ticket_app/config/color/appColors.dart';
import 'package:movie_ticket_app/model/movie/caster.dart';
import 'package:movie_ticket_app/model/movie/movie.dart';
import 'package:movie_ticket_app/module/home/selectedCinema/selectCountry.dart';
import 'package:movie_ticket_app/module/home/selectedTicket/selectTicket.dart';

import '../../../model/day/chooseDay.dart';
import '../../../model/day/time.dart';
import '../../../model/ticketChoose.dart';
import 'headerCinema.dart';
import 'nextButton.dart';

class SelectedCinema extends StatefulWidget {
  final Movie movie;
  
  final Size size;
  SelectedCinema({Key? key, required this.size, required this.movie}) : super(key: key);

  @override
  State<SelectedCinema> createState() => _SelectedCinemaState();
}

class _SelectedCinemaState extends State<SelectedCinema> {
  int selectedDate = 1;
  int selectedTime = 0;
  int selectedTime1 = 2;
  int selectedTime2 = 1;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            headerCinema(size: size, content: 'Ralph Breaks the\nInternet',),
            SelectCountry(size: size),
            buildTitle('Choose Date'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
              child: SizedBox(
                height: widget.size.height / 8,
                child : ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: days.length,
                itemBuilder: (context, index) {
                  final day = days[index];
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedDate = index;
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.only(left: 16),
                      alignment: Alignment.center,
                      width: widget.size.width / 5.2,
                      decoration: selectedDate == index
                          ? BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        gradient: const LinearGradient(
                            colors: [Colors.blue, Colors.cyan]),
                      )
                          :  BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color(0x40FFFFFF),

                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center, // Center vertically
                        crossAxisAlignment: CrossAxisAlignment.center, // Center horizontally
                        children: [
                          Text(
                            day.weekDay,
                            style: const TextStyle(
                                fontSize: 20, fontFamily: 'QuicksandSemiBold'),
                          ),
                          Text(
                            day.day,
                            style: const TextStyle(
                                fontSize: 20, fontFamily: 'QuicksandSemiBold'),
                          )
                          ,
                        ],
                      ),
                    ),
                  );
                },
              ),
              ),
            ),
            buildTitle('Central Park CGV'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
              child: SizedBox(
                height: widget.size.height / 15,
                child : ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: times.length,
                  itemBuilder: (context, index) {
                    final time = times[index];
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedTime = index;
                        });
                      },
                      child: Container(
                        margin: const EdgeInsets.only(left: 16),
                        alignment: Alignment.center,
                        width: widget.size.width / 3.8,
                        decoration: selectedTime == index
                            ? BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          gradient: const LinearGradient(
                              colors: [Colors.blue, Colors.cyan]),
                        )
                            :  BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Color(0x40FFFFFF),

                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center, // Center vertically
                          crossAxisAlignment: CrossAxisAlignment.center, // Center horizontally
                          children: [
                            Text(
                              time.time,
                              style: const TextStyle(
                                  fontSize: 20, fontFamily: 'QuicksandSemiBold'),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            buildTitle('FX Sudirman XXI'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
              child: SizedBox(
                height: widget.size.height / 15,
                child : ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: times.length,
                  itemBuilder: (context, index) {
                    final time = times[index];
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedTime1 = index;
                        });
                      },
                      child: Container(
                        margin: const EdgeInsets.only(left: 16),
                        alignment: Alignment.center,
                        width: widget.size.width / 3.8,
                        decoration: selectedTime1 == index
                            ? BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          gradient: const LinearGradient(
                              colors: [Colors.blue, Colors.cyan]),
                        )
                            :  BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Color(0x40FFFFFF),

                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center, // Center vertically
                          crossAxisAlignment: CrossAxisAlignment.center, // Center horizontally
                          children: [
                            Text(
                              time.time,
                              style: const TextStyle(
                                  fontSize: 20, fontFamily: 'QuicksandSemiBold'),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            buildTitle('FX Sudirman XXI'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
              child: SizedBox(
                height: widget.size.height / 15,
                child : ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: times.length,
                  itemBuilder: (context, index) {
                    final time = times[index];
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedTime2 = index;
                        });
                      },
                      child: Container(
                        margin: const EdgeInsets.only(left: 16),
                        alignment: Alignment.center,
                        width: widget.size.width / 3.8,
                        decoration: selectedTime2 == index
                            ? BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          gradient: const LinearGradient(
                              colors: [Colors.blue, Colors.cyan]),
                        )
                            :  BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Color(0x40FFFFFF),

                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center, // Center vertically
                          crossAxisAlignment: CrossAxisAlignment.center, // Center horizontally
                          children: [
                            Text(
                              time.time,
                              style: const TextStyle(
                                  fontSize: 20, fontFamily: 'QuicksandSemiBold'),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            nextButton(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) =>  SelectTicket(movie: widget.movie,)));
            },)
          ],
        ),
      ),
    );
  }


  Widget buildTitle(String content) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
      child: Text(content, style: const TextStyle(fontSize: 25)),
    );
  }
}





