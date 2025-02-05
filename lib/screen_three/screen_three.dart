import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_one/screen_three/image_model.dart';
import 'package:task_one/screen_three/item_image.dart';
import 'package:task_one/screen_three/separator.dart';

class ScreenThree extends StatelessWidget {
  const ScreenThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_ios_new)),
                SizedBox(
                  width: 75,
                ),
                Text(
                  "Collection",
                  style: GoogleFonts.spaceGrotesk(
                      fontSize: 18, fontWeight: FontWeight.w500),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 150,
              child: Stack(
                children: [
                  Image.asset("assets/images/Banner.png"),
                  Positioned(
                    top: 45,
                    left: 100,
                    child: ClipOval(
                        child: Image.asset(
                      "assets/images/Image.png",
                    )),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Darlene Robertson",
                  style: GoogleFonts.spaceGrotesk(
                      fontSize: 20, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  width: 15,
                ),
                Image.asset(
                  "assets/images/Vector.png",
                  width: 20,
                  fit: BoxFit.fill,
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Center(
              child: Text(
                """Each Apes NFT is a unique masterpiece, and 
        crafted by artists around the globe.""",
                style: GoogleFonts.spaceGrotesk(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Separator(
                  num: "10.0K",
                  lable: "Items",
                ),
                Image.asset("assets/images/Seperator.png"),
                Separator(
                  num: "689.10K",
                  lable: "Volume",
                ),
                Image.asset("assets/images/Seperator.png"),
                Separator(
                  num: "13.99",
                  lable: "Floor Price",
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xffA3D80D),
                        padding: EdgeInsets.only(left: 30, right: 100)),
                    child: Text(
                      "+   Watchlist",
                      style: GoogleFonts.spaceGrotesk(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    )),
                Spacer(),
                Image.asset("assets/images/Icon.png")
              ],
            ),
            SizedBox(
              height: 20,
            ),
            DefaultTabController(
              length: 2,
              child: TabBar(
                  unselectedLabelColor: Colors.grey,
                  indicatorColor: Color(0xffA3D80D),
                  indicatorSize: TabBarIndicatorSize.tab,
                  tabs: [
                    Text(
                      "Item's",
                      style: GoogleFonts.spaceGrotesk(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "Activity",
                      style: GoogleFonts.spaceGrotesk(
                          fontSize: 12, fontWeight: FontWeight.w500),
                    )
                  ]),
            ),

            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 15
                ),
                itemBuilder: (context, index) => ItemImage(
                  lable: imageModel[index].lable,
                  num: imageModel[index].num,
                  image: imageModel[index].image,
                ),
                itemCount: imageModel.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}
