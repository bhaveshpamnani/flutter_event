import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:screens/profile.dart';

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  TextEditingController search = new TextEditingController();
  var type = ['All', 'Electro', 'Theatrical', 'Classical', 'Indian', 'Jazz'];
  var singerimg = [
    'assets/images/singer/luke-thornton.jpg',
    'assets/images/singer/claudia-raya.jpg',
    'assets/images/singer/elizeu-dias.jpg',
    'assets/images/singer/kevin-britos.jpg',
    'assets/images/singer/austin-neill.jpg',
    'assets/images/singer/melanie-van-leeuwen.jpg',
    'assets/images/singer/nihal-demirci-erenay.jpg'
  ];
  var singername = [
    'Austin Neill',
    'Claudia Raya',
    'Elizeu Dias',
    'Kevin Britos',
    'Luke Thornton',
    'Melanie Van Leeuwen',
    'Nihal Demirci Erenay'
  ];
  var concertsadd = [
    '20 Wellington Street East Suite 20 Toronto, Ontario Canada M5E 1C5',
    '8th Floor, 1190 Hornby Street Vancouver, BC Canada V6Z 2K5',
    'The Royal Conservatory of Music TELUS , Ontario, Canada M5S 1W2',
    'and Learning 273 Bloor Street West Toronto, Ontario, Canada M5S 1W2',
    '410 SHERBOURNE ST, TORONTO, ON. 416-323-1251',
    'Near, Babylon Club Road, S P Road, Science City Cir, Bhadaj, Gujarat',
    'Nr applewoods, Sardar patel ring road Shela, Road, Ahmedabad'
  ];
  var concertsadd1 = [
    '20 Wellington Street East Suite',
    '8th Floor, 1190 Hornby Street',
    'The Royal Conservatory of Music',
    'and Learning 273 Bloor Street West',
    '410 SHERBOURNE ST, TORONTO',
    'Near, Babylon Club Road, S P Road',
    'Nr applewoods, Sardar , Ahmedabad'
  ];

  List<bool>? isSelected;

  @override
  void initState() {
    super.initState();
    // Initialize isSelected list with 'false' for each item
    isSelected = List.generate(type.length, (index) => false);
    isSelected?[0] = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              color: Colors.white,
            ),
            Container(
              height: 600,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Color.fromRGBO(189, 29, 160, 100),
                    Color.fromRGBO(157, 0, 255, 100),
                  ],
                ),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.elliptical(200, 60),
                  bottomLeft: Radius.elliptical(200, 60),
                ),
              ),
            ),
            // Container(
            //   color: Colors.black,
            // ),
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 5.5, 0, 10.5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            // padding: EdgeInsets.fromLTRB(0, 7.5, 0, 2.5),
                            width: 230,
                            height: 40,
                            child: TextField(
                              controller: search,
                              cursorColor: Colors.white,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                              scrollPadding: EdgeInsets.all(10),
                              decoration: InputDecoration(
                                isDense: true,
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(color: Colors.white54),
                                ),
                                hintText: "Search Concert",
                                hintStyle: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500),
                                suffixIcon:
                                    Icon(Icons.search, color: Colors.white),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white70,
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Profile(),
                                ));
                          },
                          child: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/images/man.png')),
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 22.0),
                    child: Text(
                      "Events",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.07,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: type.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: isSelected![index]
                          ? Container(
                                  width: 85,
                                  height: 16,
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    // Change background color to red
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Center(
                                    child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          isSelected![index] = false;
                                        });
                                      },
                                      child: Text(
                                        type[index],
                                        style: TextStyle(
                                          fontSize: 17,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              : InkWell(
                                  onTap: () {
                                    setState(() {
                                      // Reset all selections
                                      isSelected = List.generate(
                                          type.length, (index) => false);
                                      // Set the selected item
                                      isSelected![index] = true;
                                    });
                                  },
                                  child: Container(
                                    width: 82,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      // Set a transparent background
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Center(
                                      child: Text(
                                        type[index],
                                        style: TextStyle(
                                          fontSize: 17,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                        );
                      },
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.35,
                    width: double.infinity,
                    // width: 200,
                    // height: 265,
                    padding: EdgeInsets.only(left: 10, top: 10, bottom: 10),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: singerimg.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Stack(
                            children: [
                              Container(
                                width: 270,
                                height: 270,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    singerimg[index],
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 65,
                                      width: 65,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: Color(0xEFF32D66),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            '26',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20,
                                                color: Colors.white),
                                          ),
                                          Text(
                                            'JUNE',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 15,
                                                color: Colors.white),
                                          ),
                                          Text(
                                            '6.30 PM',
                                            style: TextStyle(
                                                fontWeight: FontWeight.normal,
                                                fontSize: 9,
                                                color: Colors.white),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 95,
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Text(
                                        singername[index],
                                        style: TextStyle(
                                            fontWeight: FontWeight.w800,
                                            fontSize: 18,
                                            color: Colors.white),
                                      )),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Container(
                                        width: 250,
                                        child: Text(
                                          concertsadd[index],
                                          style: TextStyle(
                                              fontWeight: FontWeight.w300,
                                              fontSize: 15,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      "Events near you",
                      style: TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.35,
                    width: double.infinity,
                    child: ListView.builder(
                      itemCount: concertsadd1.length,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(
                              left: 20.0, right: 20.0, top: 8),
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.13,
                            width: 325,
                            child: Card(
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Container(
                                      width: 75,
                                      height: 75,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          image: DecorationImage(
                                              image:
                                                  AssetImage(singerimg[index]),
                                              fit: BoxFit.cover)),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          singername[index],
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 15,
                                              color: Colors.pinkAccent),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          concertsadd1[index],
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 12,
                                              color: Colors.black),
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "June 28",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.black12),
                                            ),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            Text(
                                              "6.30 PM",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.black12),
                                            ),
                                            SizedBox(
                                              width: 40,
                                            ),
                                            Text(
                                              "See Tickets",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w700,
                                                  color: Colors.black38),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
