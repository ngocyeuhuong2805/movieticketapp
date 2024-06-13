import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ArrowBackButton extends StatelessWidget {
  const ArrowBackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.only(left: 16, top: 4),
        child: IconButton(
          icon: FaIcon(FontAwesomeIcons.arrowLeft, color: Colors.white, size: 22,),
          onPressed: (){
            Navigator.pop(context);
          },
        )
        ,
      ),
    );
  }
}