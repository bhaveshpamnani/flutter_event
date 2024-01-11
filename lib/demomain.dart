import 'package:flutter/material.dart';

class DemoMain extends StatelessWidget {
  const DemoMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.black,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, left: 8.0),
                    child: Container(
                      width: 250,
                      height: 40,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, left: 8.0),
                    child: Container(
                      width: 100,
                      height: 40,
                      color: Colors.red,
                    ),
                  )
                ],
              ),
              Container(
                height: 40,
                width: 100,
                color: Colors.blue,
              ),
              Container(
                child: ListView.builder(itemCount: 5,scrollDirection: Axis.horizontal,itemBuilder: (context, index) {
                  return Container(
                    width: 70,
                    height: 20,
                    color: Colors.deepOrange,
                  );
                },),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
