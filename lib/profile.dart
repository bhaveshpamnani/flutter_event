import 'package:flutter/material.dart';

class Profile extends StatefulWidget {

  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  var singerimg = [
    'assets/images/singer/luke-thornton.jpg',
    'assets/images/singer/claudia-raya.jpg',
    'assets/images/singer/elizeu-dias.jpg',
    'assets/images/singer/kevin-britos.jpg',
    'assets/images/singer/austin-neill.jpg',
    'assets/images/singer/melanie-van-leeuwen.jpg',
    'assets/images/singer/nihal-demirci-erenay.jpg'
  ];
  var type = ["Upcoming","Reserved","Expired"];
  var singername = [
    'Austin Neill',
    'Claudia Raya',
    'Elizeu Dias',
    'Kevin Britos',
    'Luke Thornton',
    'Melanie Van Leeuwen',
    'Nihal Demirci Erenay'
  ];
  List<bool>? isSelected;
  @override
  void initState() {
    super.initState();
    // Initialize isSelected list with 'false' for each item
    isSelected = List.generate(type.length, (index) => false);
    isSelected?[0]=true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Stack(
              children: [
                Container(
                  color: Colors.white60,
                ),
                Container(
                  height: 200,
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white70,
                        ),
                        child: const Center(
                            child: Icon(Icons.arrow_back_ios_new_outlined)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: InkWell(
                        onTap: () {
                          print('Profile Clicked');
                        },
                        child: SizedBox(
                          height: 90,
                          width: 90,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12.0),
                            child: Image.asset(
                              'assets/images/man.png',
                              fit: BoxFit.fill,
                              // height: 350,
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        print('More option Click');
                      },
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white70,
                        ),
                        child: const Center(child: Icon(Icons.more_vert)),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Center(
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Jack Wieler',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        'jackwieler@gmail.com',
                        style: TextStyle(
                            color: Colors.white70, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 15.0, top: 20.0),
                  child: Text(
                    'Tickets',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                ),
                const SizedBox(
                  height: 10,
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
                          width: 90,
                          height: 16,
                          decoration: BoxDecoration(
                            color: Colors.purple,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  // Reset all selections
                                  isSelected = List.generate(type.length, (index) => false);
                                  // Set the selected item
                                  isSelected![index] = true;
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
                              isSelected = List.generate(type.length, (index) => false);
                              // Set the selected item
                              isSelected![index] = true;
                            });
                          },
                          child: Container(
                            width: 90,
                            height: 30,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                type[index],
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.black45,
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

                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Card(
                    child: Container(
                      width: double.infinity,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.white54,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        // crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                                color: const Color(0xFFF66A8F),
                                borderRadius: BorderRadius.circular(12)),
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '28',
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                                Text(
                                  'JULY',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white),
                                ),
                                SizedBox(
                                  height: 7,
                                ),
                                Text(
                                  '06:30PM',
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 5,
                                  width: 15,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsets.only(left: 8.0),
                                        child: Text(
                                          'SEC',
                                          style: TextStyle(
                                              fontSize: 9,
                                              fontWeight: FontWeight.normal,
                                              color: Colors.black38),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        'Row',
                                        style: TextStyle(
                                            fontSize: 9,
                                            fontWeight: FontWeight.normal,
                                            color: Colors.black38),
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        'Seat',
                                        style: TextStyle(
                                            fontSize: 9,
                                            fontWeight: FontWeight.normal,
                                            color: Colors.black38),
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        'Admit',
                                        style: TextStyle(
                                            fontSize: 9,
                                            fontWeight: FontWeight.normal,
                                            color: Colors.black38),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsets.only(left: 8.0),
                                        child: Text(
                                          '104',
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.black),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        '20',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black),
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        '14',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black),
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        'Adult',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text(
                                    "Consert Name",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w800,
                                        color: Colors.black38),
                                  ),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text(
                                    "Consert Address",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black38),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Card(
                    child: Container(
                      width: double.infinity,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.white54,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        // crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                                color: const Color(0xFFF66A8F),
                                borderRadius: BorderRadius.circular(12)),
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '28',
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                                Text(
                                  'JULY',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white),
                                ),
                                SizedBox(
                                  height: 7,
                                ),
                                Text(
                                  '06:30PM',
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 5,
                                  width: 15,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsets.only(left: 8.0),
                                        child: Text(
                                          'SEC',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black38),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        'Row',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black38),
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        'Seat',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black38),
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        'Admit',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black38),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsets.only(left: 8.0),
                                        child: Text(
                                          '104',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.black),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        '20',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black),
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        '14',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black),
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        'Adult',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text(
                                    "Consert Name",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w800,
                                        color: Colors.black38),
                                  ),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text(
                                    "Consert Address",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black38),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Text(
                    'Favorites',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                ),
                Container(
                  height: 130,
                  width: double.infinity,
                  child: ListView.builder(scrollDirection: Axis.horizontal,itemCount: singerimg.length,itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 125,
                        width: 120,
                        child: Stack(
                          children: [
                            Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                image: DecorationImage(
                                    image: AssetImage(singerimg[index]),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Row(
                                children: [
                                  Expanded(child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(singername[index],style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),),
                                  )),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },),
                )
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
