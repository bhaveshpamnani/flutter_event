import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  width: 45,
                  height: 45,
                  color: Colors.red,
                  // child: Text('Back btn'),
                ),
              ),
              Expanded(
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.yellow,
                  // child: Text('Image'),
                ),
              ),
              Expanded(
                child: Container(
                  width: 45,
                  height: 45,
                  color: Colors.black87,
                  // child: Text('Image'),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Container(
              width: 100,
              height: 100,
              color: Colors.deepPurple,
              // child: Text('Image'),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Container(
              width: 60,
              height: 60,
              color: Colors.yellow,
              // child: Text('Image'),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 60,
                height: 60,
                color: Colors.yellow,
                // child: Text('Image'),
              ),
              Container(
                width: 60,
                height: 60,
                color: Colors.yellow,
                // child: Text('Image'),
              ),
              Container(
                width: 60,
                height: 60,
                color: Colors.yellow,
                // child: Text('Image'),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              // width: 350,
              // height: 150,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 75,
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(20)),
                    // child: Text('Image'),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              color: Colors.white,
                              // child: Text('Image'),
                            ),
                            Container(
                              width: 40,
                              height: 40,
                              color: Colors.red,
                              // child: Text('Image'),
                            ),
                            Container(
                              width: 40,
                              height: 40,
                              color: Colors.teal,
                              // child: Text('Image'),
                            ),
                            Container(
                              width: 40,
                              height: 40,
                              color: Colors.amberAccent,
                              // child: Text('Image'),
                            ),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              color: Colors.teal,
                              // child: Text('Image'),
                            ),
                            Container(
                              width: 40,
                              height: 40,
                              color: Colors.white,
                              // child: Text('Image'),
                            ),
                            Container(
                              width: 40,
                              height: 40,
                              color: Colors.deepPurpleAccent,
                              // child: Text('Image'),
                            ),
                            Container(
                              width: 40,
                              height: 40,
                              color: Colors.pink,
                              // child: Text('Image'),
                            ),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Container(
                            // padding: EdgeInsets.only(left: 50),
                            width: 60,
                            height: 20,
                            color: Colors.teal,
                            // child: Text('Image'),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Container(
                            width: 100,
                            height: 20,
                            color: Colors.amberAccent,
                            // child: Text('Image'),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              // width: 350,
              // height: 150,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 75,
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(20)),
                    // child: Text('Image'),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              color: Colors.white,
                              // child: Text('Image'),
                            ),
                            Container(
                              width: 40,
                              height: 40,
                              color: Colors.red,
                              // child: Text('Image'),
                            ),
                            Container(
                              width: 40,
                              height: 40,
                              color: Colors.teal,
                              // child: Text('Image'),
                            ),
                            Container(
                              width: 40,
                              height: 40,
                              color: Colors.amberAccent,
                              // child: Text('Image'),
                            ),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              color: Colors.teal,
                              // child: Text('Image'),
                            ),
                            Container(
                              width: 40,
                              height: 40,
                              color: Colors.white,
                              // child: Text('Image'),
                            ),
                            Container(
                              width: 40,
                              height: 40,
                              color: Colors.deepPurpleAccent,
                              // child: Text('Image'),
                            ),
                            Container(
                              width: 40,
                              height: 40,
                              color: Colors.pink,
                              // child: Text('Image'),
                            ),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Container(
                            // padding: EdgeInsets.only(left: 50),
                            width: 60,
                            height: 20,
                            color: Colors.teal,
                            // child: Text('Image'),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Container(
                            width: 100,
                            height: 20,
                            color: Colors.amberAccent,
                            // child: Text('Image'),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 60,
            height: 60,
            color: Colors.yellow,
            // child: Text('Image'),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 60,
                height: 60,
                color: Colors.yellow,
                // child: Text('Image'),
              ),
              Container(
                width: 60,
                height: 60,
                color: Colors.yellow,
                // child: Text('Image'),
              ),
              Container(
                width: 60,
                height: 60,
                color: Colors.yellow,
                // child: Text('Image'),
              )
            ],
          ),
        ],
      ),
    );
  }
}
