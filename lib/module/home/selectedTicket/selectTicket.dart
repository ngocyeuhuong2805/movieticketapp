import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movie_ticket_app/model/movie/caster.dart';
import 'package:movie_ticket_app/model/movie/movie.dart';
import 'package:movie_ticket_app/model/movie/seatRow.dart';
import 'package:movie_ticket_app/module/home/selectedTicket/checkOutPage.dart';

import '../../../model/ticketChoose.dart';
import 'arrow_back_button.dart';
import 'movieTitle.dart';

class SelectTicket extends StatelessWidget {
   final Movie movie;
   SelectTicket({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ArrowBackButton(),
            const TitleMovie(),
            // Seat status bar
            Padding(
              padding: const EdgeInsets.only(top: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildStatusBar(color: Colors.white10, content: 'Available'),
                  buildStatusBar(color: Colors.white30, content: 'Booked'),
                  buildStatusBar(
                      color: Colors.indigoAccent, content: 'Your Seat'),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: seatRow
                      .map((row) => Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: row.seatRows
                                .map(
                                  (seat) => ToggleButton(
                                    child: Text(
                                      seat.name,
                                      style: const TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                )
                                .toList(),
                          ))
                      .toList(),
                ),
              ),
            ),

            Container(
              alignment: Alignment.center,
              child: const Text(
                'Screen',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 24, bottom: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('Total Price', style: TextStyle(color: Colors.grey, fontSize: 15),),
                        Text('150 000 VND', style: TextStyle(fontSize: 20),),
                      ],
                    ),
                  ),
                   GestureDetector(
                     onTap: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context) => CheckOutPage(movie: movie,)));
                     },
                    child: Container(
                      margin: const EdgeInsets.only(top: 20, bottom: 10),
                      alignment: Alignment.center,
                      width: size.width/3,
                      height: size.height /16,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.indigoAccent),
                      child: const Text('Book Ticket', style: TextStyle(fontSize: 20), ),
                    ),

                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }

  Row buildStatusBar({required Color color, required String content}) {
    return Row(
      children: [
        Container(
          height: 24,
          width: 24,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Text(
            content,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          ),
        ),
      ],
    );
  }
}

class ToggleButton extends StatefulWidget {
  final Widget child;
  const ToggleButton({super.key, required this.child});

  @override
  State<ToggleButton> createState() => _ToggleButtonState();
}

class _ToggleButtonState extends State<ToggleButton> {
  TicketStates _ticketState = TicketStates.idle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      width: 48,
      child: Expanded(
        child: GestureDetector(
          onTap: () {
            setState(() {
              _ticketState = _ticketState == TicketStates.idle
                  ? TicketStates.active
                  : TicketStates.idle;
            });
          },
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: _getButtonColor(),
            ),
            child: widget.child,
          ),
        ),
      ),
    );
  }

  Color _getButtonColor() {
    switch (_ticketState) {
      case TicketStates.idle:
        return Colors.white30;
      case TicketStates.active:
        return Colors.red;
      case TicketStates.busy:
        return Colors.white10;
    }
  }
}
