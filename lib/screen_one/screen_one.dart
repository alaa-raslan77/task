import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_one/screen_2/screen_two.dart';
import 'package:task_one/screen_one/bar_item.dart';
import 'package:task_one/screen_one/bar_model.dart';
import 'package:task_one/screen_three/screen_three.dart';

class ScreenOne extends StatefulWidget {
  ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  int selectedTabIndex = 0;

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text.rich(TextSpan(children: [
              TextSpan(
                  text: "Selling the",
                  style: GoogleFonts.spaceGrotesk(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  )),
              TextSpan(
                  text: " MOST POPULAR ",
                  style: GoogleFonts.spaceGrotesk(
                      fontSize: 22,
                      color: Colors.lightGreenAccent,
                      fontWeight: FontWeight.bold)),
              TextSpan(
                  text: "NFT is only here",
                  style: GoogleFonts.spaceGrotesk(fontSize: 20, fontWeight: FontWeight.w500)),
            ])),
            SizedBox(
              height: 20,
            ),
            DefaultTabController(
              length: barModel.length,
              child: TabBar(
                onTap: (value) {
                  setState(() {
                    value=selectedTabIndex;
                  });;
                },
                isScrollable: true,
                indicatorColor: Colors.transparent,
                dividerColor: Colors.transparent,
                tabs: barModel
                    .map((e) => BarItem(
                          lable: e.lable,
                          isSelected: barModel.elementAt(selectedTabIndex) == e,
                        ))
                    .toList(),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Top Collection 🔥",
              style: GoogleFonts.spaceGrotesk(fontWeight: FontWeight.w500, fontSize: 16),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  right: 10, left: 10, top: 20, bottom: 30),
              child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  child: Image.asset("assets/images/image_1.png")),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Text(
                    "Hypebest Apes G",
                    style: GoogleFonts.spaceGrotesk(fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                  Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Ends in",
                        style: GoogleFonts.spaceGrotesk(
                            fontSize: 10,
                            color: Colors.grey.shade400,
                            fontWeight: FontWeight.w600),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.access_time,
                            size: 20,
                          ),
                          Text(
                            "  1h 23m 32s",
                            style: GoogleFonts.spaceGrotesk(
                                fontSize: 12, fontWeight: FontWeight.w500),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            "Highest Bid Today",
                            style: GoogleFonts.spaceGrotesk(
                                fontSize: 10, color: Colors.grey.shade500),
                          ),
                          Text(
                            "2.23 ETH",
                            style: GoogleFonts.spaceGrotesk(
                                fontWeight: FontWeight.w500, fontSize: 13),
                          )
                        ],
                      ),
                      Spacer(),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder:
                            (context) => ScreenTwo(),));
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
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: [
                      Text(
                        "Best Artist",
                        style: GoogleFonts.spaceGrotesk(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Icon(
                            Icons.circle_outlined,
                            size: 7,
                          ),
                          Icon(
                            Icons.circle_outlined,
                            size: 7,
                          ),
                          Icon(
                            Icons.circle_outlined,
                            size: 7,
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 20,
                        child: ClipOval(
                            child: Image.asset(
                          "assets/images/image_1.png",
                          height: 40,
                          width: 40,
                          fit: BoxFit.fill,
                        )),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Darlene Robertson",
                            style: GoogleFonts.spaceGrotesk(
                                fontSize: 12, fontWeight: FontWeight.w400),
                          ),
                          Text(
                            "125k Followers",
                            style: GoogleFonts.spaceGrotesk(
                                fontSize: 12, fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                      Spacer(),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder:
                            (context) => ScreenThree(),));
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.lightGreenAccent),
                          child: Text(
                            "Follow",
                            style: GoogleFonts.spaceGrotesk(color: Colors.white),
                          ))
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.save_as_rounded),
            label: 'save',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black.withOpacity(.7),
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
      ),
    );
  }
}
