import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_ios)),
                SizedBox(
                  width: 80,
                ),
                Text(
                  "Detail",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.spaceGrotesk(fontSize: 15, fontWeight: FontWeight.w500),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset(
                  "assets/images/image_2.png",
                  width: 300,
                  height: 350,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(height: 30,),
            Text("#14415",style:
              GoogleFonts.spaceGrotesk(
                fontSize: 15,
                color: Colors.lightGreenAccent,
                fontWeight: FontWeight.bold
              ),),
            SizedBox(height: 20,),
            Row(
              children: [
                Text("Hypebest Apes B",style:
                  GoogleFonts.spaceGrotesk(fontSize: 17,
                  fontWeight: FontWeight.w500),),
                Spacer(),
                Icon(Icons.ac_unit)
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Text("125 Sold ",
                style:
                  GoogleFonts.spaceGrotesk(
                    fontSize: 10,
                    color: Colors.grey
                  ),),
                SizedBox(width: 10,),
                Text("1h 23m 32s",style:
                    GoogleFonts.spaceGrotesk(
                    fontSize: 10,
                    color: Colors.grey
                ),)
              ],
            ),
            SizedBox(height: 30,),

            Text("Description",
            style:
              GoogleFonts.spaceGrotesk(
                fontSize: 15,
                fontWeight: FontWeight.w500
              ),),
            SizedBox(height: 20,),
            
            Text("""Each Apes NET is a unique masterpiece, and
crafted by artists around the globe""",
            style: GoogleFonts.spaceGrotesk(
              fontSize: 11,
              color: Colors.grey
            ),),
            SizedBox(height: 30,),
            Row(
              children: [
                Column(

                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Price",style:
                      GoogleFonts.spaceGrotesk(color: Colors.grey),),
                    Text("2.23 ETH",
                    style:
                      GoogleFonts.spaceGrotesk(fontSize: 15,
                      fontWeight: FontWeight.w600),)
                  ],
                ),
                Spacer(),
                ElevatedButton(
                    onPressed: () {

                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black),
                    child: Row(
                      children: [
                        Icon(
                          Icons.double_arrow,
                          color: Colors.white,
                        ),
                        Text(
                          "Place Bid",
                          style: GoogleFonts.spaceGrotesk(color: Colors.white),
                        )
                      ],
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
