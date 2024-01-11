import 'package:flutter/material.dart';
import 'package:screens/screen1.dart';
import 'package:screens/signup.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignupState();
}

class _SignupState extends State<SignIn> {
  bool obsText = true;
  var uName = TextEditingController();
  var pass = TextEditingController();
  String uname = '';
  String Pass = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Stack(
            // fit: StackFit.expand,
            children: [
              Container(
                child: Image.asset(
                  'assets/images/bg.png',
                  //height: MediaQuery.of(context).size.height,
                  //width: MediaQuery.of(context).size.width,
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.width * 0.85),
                child: Container(
                  // padding: MediaQuery.of(context).size.width*0.5,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    shape: BoxShape.rectangle,
                    color: Colors.black.withOpacity(0.5),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          blurRadius: 5.0,
                          offset: Offset(5.0, 5.0)),
                    ],
                  ),
                  child: Card(
                    color: Color(0x90000000),
                    child: Column(
                      children: [
                        Text(
                          'Welcome Back!',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                          ),
                        ),
                        Text(
                          'welcome back we missed you',
                          style: TextStyle(
                            color: Colors.white54,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          width: 300,
                          child: TextField(
                            controller: uName,
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              labelText: 'UserName',
                              hintText: 'abc',
                              labelStyle: TextStyle(color: Colors.white54),
                              hintStyle: TextStyle(
                                color: Color(0x5ff5f1f1),
                              ),
                              //fillColor: Colors.white54,
                              prefixIcon: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.person,
                                  color: Colors.white54,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(13),
                                borderSide: BorderSide(
                                  color: Colors.deepPurpleAccent,
                                  width: 3,
                                ),
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(13)),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          width: 300,
                          child: TextField(
                            controller: pass,
                            obscureText: obsText,
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              labelText: 'Password',
                              hintText: 'abc1A#',

                              //fillColor: Colors.white,
                              labelStyle: TextStyle(color: Colors.white54),
                              hintStyle: TextStyle(
                                color: Color(0x5ff5f1f1),
                              ),
                              prefixIcon: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.key,
                                  color: Colors.white54,
                                ),
                              ),
                              suffixIcon: IconButton(
                                onPressed: () {
                                  obsText = !obsText;
                                  setState(() {});
                                },
                                icon: obsText
                                    ? Icon(Icons.visibility,
                                        color: Colors.white54)
                                    : Icon(Icons.visibility_off,
                                        color: Colors.white54),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(13),
                                borderSide: BorderSide(
                                  color: Colors.deepPurpleAccent,
                                  width: 3,
                                ),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(13),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        InkWell(
                          onTap: () {
                            print('Password forgot cliked');
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 55.0),
                                child: Container(
                                  child: Text(
                                    "Forgot Password?",
                                    style: TextStyle(color: Colors.white54),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        InkWell(
                          onTap: () {
                            String uname = uName.text;
                            String Pass = pass.text;
                            print('User name : $uname \n Password : $Pass');
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MainScreen(),
                              ),
                            );
                          },
                          child: Container(
                            width: 250,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(13),
                              gradient: LinearGradient(
                                colors: [Colors.purple, Colors.blue],
                                begin: Alignment.bottomLeft,
                                end: Alignment.topRight,
                              ),
                            ),
                            child: Center(
                              child: Text("Sign In",
                                  style: TextStyle(color: Colors.white)),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 47),
                              child: Container(
                                width: 5,
                                height: 2,
                                decoration: BoxDecoration(
                                  border: Border(
                                    left: BorderSide(
                                      color: Colors.white54,
                                      width: 50,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 4.5, right: 4.5),
                              child: Text(
                                'Or continue with',
                                style: TextStyle(color: Colors.white54),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 50),
                              child: Container(
                                width: 5,
                                height: 2,
                                decoration: BoxDecoration(
                                  border: Border(
                                    left: BorderSide(
                                      color: Colors.white54,
                                      width: 50,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Stack(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(10),
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    shape: BoxShape.rectangle,
                                    color: Colors.black38.withOpacity(0.5),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black38,
                                          blurRadius: 10.0,
                                          offset: Offset(10.0, 10.0)),
                                    ],
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    print('Google icon Cliked !!');
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Container(
                                      child: Image.asset(
                                        'assets/images/google.png',
                                        width: 30,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Stack(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(10),
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    shape: BoxShape.rectangle,
                                    color: Colors.black38.withOpacity(0.5),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black38,
                                          blurRadius: 10.0,
                                          offset: Offset(10.0, 10.0)),
                                    ],
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    print('Apple icon Cliked !!');
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Container(
                                      child: Image.asset(
                                        'assets/images/apple.png',
                                        width: 30,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Stack(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(10),
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    shape: BoxShape.rectangle,
                                    color: Colors.black38.withOpacity(0.5),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black38,
                                          blurRadius: 10.0,
                                          offset: Offset(10.0, 10.0)),
                                    ],
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    print('Facebook icon Cliked !!');
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Container(
                                      child: Image.asset(
                                        'assets/images/facebook.png',
                                        width: 30,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Don\'t have acoount ',
                              style: TextStyle(
                                color: Colors.white54,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SignUp(),
                                  ),
                                );
                              },
                              child: Text(
                                'Sign Up ',
                                style: TextStyle(
                                  color: Colors.teal,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
