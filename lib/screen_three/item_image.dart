import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemImage extends StatelessWidget {
  ItemImage(
      {super.key, required this.image, required this.num, required this.lable});

  String image;
  String num;
  String lable;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              image,
              height: 500,
              width: 300,

              fit: BoxFit.cover,
            )),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              margin: EdgeInsets.all(15),
              child: Text.rich(TextSpan(children: [
                TextSpan(
                    text: num,
                    style: GoogleFonts.spaceGrotesk(
                      fontSize: 10,
                      color: Color(0xffA3D80D),
                      fontWeight: FontWeight.bold,
                    )),
                TextSpan(
                    text: lable,
                    style: GoogleFonts.spaceGrotesk(
                        fontSize: 10,
                        color: Colors.white,
                        fontWeight: FontWeight.bold)),
              ])),
            ),
          ],
        )
      ],
    );
  }
}
