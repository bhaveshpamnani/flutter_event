import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  var serach = TextEditingController();
  var type = ['All', 'Electro', 'Theatrical', 'Classical', 'Indian', 'Jazz'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: [
            Container(
              child: Image.asset(
                'assets/images/main_screen.jpg',
                fit: BoxFit.fill,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: 38,
                      height: 38,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        color: Colors.white70,
                      ),
                      child: Center(
                          child: Icon(Icons.arrow_back_ios_new_outlined)),
                    ),
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 250,
                      height: 45,
                      decoration: BoxDecoration(
                        color: Colors.white54,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      // height: MediaQuery.of(context).size.height*0.05,
                      child: TextField(
                        controller: serach,
                        cursorHeight: 20,
                        cursorColor: Colors.black,

                        style: TextStyle(color: Colors.black,fontSize: 15),
                        decoration: InputDecoration(
                          //labelText: 'Search Concert',
                          contentPadding: EdgeInsets.only(left: 8,top: 8),
                          hintText: "Search Concert",
                          labelStyle: TextStyle(color: Colors.white),
                          hintStyle: TextStyle(
                            color: Colors.black87,
                          ),
                          //fillColor: Colors.white54,
                          suffixIcon: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.search,
                              color: Colors.white,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 1,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 1,
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(13),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        print('Profile Clicked');
                      },
                      child: Container(
                        height: 50,
                        width: 50,
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
                  ],
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(12, 10, 0, 0),
                  child: Text(
                    "Events",
                    style: TextStyle(fontSize: 35, color: Colors.white),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: double.infinity,
                  padding: EdgeInsets.only(left: 10,top: 10,bottom: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                          child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: type.length,
                        itemBuilder: (context, index) {
                          return Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(22),
                            ),
                            padding: EdgeInsets.only(left: 10, right: 10),
                            child: type[index] == 'All'
                                ? Container(
                              // height: 8,
                              // width: 30,
                              // padding: EdgeInsets.all(2),
                              //       decoration: BoxDecoration(
                              //           color: Colors.red,
                              //           borderRadius:
                              //               BorderRadius.circular(5),),
                                    child: Text(
                                      type[index],
                                      style: TextStyle(
                                          color: Colors.black87, fontSize: 16),
                                    ),
                                  )
                                : Container(
                                    child: Text(
                                      type[index],
                                      style: TextStyle(
                                          color: Colors.white70, fontSize: 16),
                                    ),
                                  ),
                          );
                        },
                      )),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 350,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 300,
                          child: Card(
                            child: Stack(
                              children: [
                                InkWell(
                                  onTap: () {
                                    print('Clicked');
                                  },
                                  child: Container(
                                    height: 350,
                                    width: 300,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(12.0),
                                      child: Image.asset(
                                        'assets/images/concert1.jpg',
                                        fit: BoxFit.fill,
                                        // height: 350,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          padding: EdgeInsets.all(12),
                                          decoration: BoxDecoration(
                                              color: Colors.red,
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: Column(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(0.01),
                                                child: Container(
                                                  child: Text(
                                                    '20',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(0.01),
                                                child: Container(
                                                  child: Text(
                                                    'JUNE',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w700),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(0.01),
                                                child: Container(
                                                  child: Text(
                                                    '6:30pm',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 12),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                child: Text(
                                                  'Electromania 2020',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                              Container(
                                                padding: EdgeInsets.all(5),
                                                child: Text(
                                                  'abcdefghiffjfjalf',
                                                  style: TextStyle(
                                                      color: Colors.white70,
                                                      fontSize: 15),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  child: Text(
                    "Events near you !!",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 27,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: ListView.builder(
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Container(
                            width: 385,
                            height: 120,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: 90,
                                    height: 90,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(12.0),
                                      child: Image.asset(
                                        'assets/images/man.png',
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        'CHRCHES - World Tour',
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.pinkAccent,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        'abcdfjdsfweoidlknvc.vewfoidlknv',
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            'June 26',
                                            style: TextStyle(
                                                color: Colors.blueGrey),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            '6.30PM',
                                            style: TextStyle(
                                                color: Colors.blueGrey),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          InkWell(
                                            onTap: () {
                                              print('See Tickets');
                                            },
                                            child: Text(
                                              'See Tickets',
                                              style: TextStyle(
                                                  color: Colors.blueGrey,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
// for Curve
// class CurvePainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     var paint = Paint();
//     paint.color = Colors.pink[800]!;
//     paint.style = PaintingStyle.fill; // Change this to fill
//
//     var path = Path();
//
//     path.moveTo(0, size.height * 0.6);
//     path.quadraticBezierTo(
//         size.width / 2, size.height / 1.4, size.width, size.height * 0.6);
//     path.lineTo(size.width, 0);
//     path.lineTo(0, 0);
//
//     canvas.drawPath(path, paint);
//   }
//
//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) {
//     return true;
//   }
// }
