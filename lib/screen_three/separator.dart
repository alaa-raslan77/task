import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Separator extends StatelessWidget {

  String num;
  String lable;

  Separator({required this.num,required this.lable});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          num,
          style: GoogleFonts.spaceGrotesk(
              fontWeight: FontWeight.w400, fontSize: 12),
        ),
        Text(lable,
        style: GoogleFonts.spaceGrotesk(

          color: Colors.grey,
          fontWeight: FontWeight.w400,
          fontSize: 10

        ),)
      ],
    );
  }
}
