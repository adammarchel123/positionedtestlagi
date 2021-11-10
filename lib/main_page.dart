import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  getSmallDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 2 / 3;
  getBigDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 7 / 8;

  final beginAll = const Color(0xffb226b2);
  final endSmall = const Color(0xffff6da7);
  final endBigAndText = const Color(0xffff4891);
  final thirdCircle = const Color(0xfff3e9ee);
  final backgroundColor = const Color(0xffeeeeee);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Stack(
        children: [
          Positioned(
            right: -getSmallDiameter(context) / 3,
            top: -getSmallDiameter(context) / 3,
            child: Container(
              height: getSmallDiameter(context),
              width: getSmallDiameter(context),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                      colors: [beginAll, endSmall],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter)),
            ),
          ),
          Positioned(
            left: -getBigDiameter(context) / 4,
            top: -getBigDiameter(context) / 4,
            child: Container(
              child: Center(
                child: Text(
                  'driblee',
                  style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'Pacifico',
                      color: Colors.white),
                ),
              ),
              height: getBigDiameter(context),
              width: getBigDiameter(context),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                      colors: [beginAll, endBigAndText],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter)),
            ),
          ),
          Positioned(
            right: -getBigDiameter(context) / 3,
            bottom: -getBigDiameter(context) / 3,
            child: Container(
              height: getBigDiameter(context),
              width: getSmallDiameter(context),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                      colors: [beginAll, endBigAndText],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter)),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ListView(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.grey),
                  ),
                  margin: EdgeInsets.fromLTRB(20, 300, 20, 10),
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 25),
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.email,
                              color: endBigAndText,
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: endBigAndText),
                            ),
                            labelText: 'Email: ',
                            labelStyle: TextStyle(color: endBigAndText)),
                      ),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.vpn_key,
                              color: endBigAndText,
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: endBigAndText),
                            ),
                            labelText: 'Password: ',
                            labelStyle: TextStyle(color: endBigAndText)),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 20, 20),
                    child: Text(
                      'FORGOT PASSWORD?',
                      style: TextStyle(
                          color: endBigAndText,
                          fontSize: 11,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20, 0, 20, 35),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Material(
                        elevation: 3,
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          width: MediaQuery.of(context).size.width / 2,
                          height: 40,
                          child: Material(
                            child: InkWell(
                              onTap: () {},
                              splashColor: endBigAndText,
                              borderRadius: BorderRadius.circular(20),
                              child: Center(
                                child: Text(
                                  'SIGN IN',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: LinearGradient(
                                  colors: [beginAll, endBigAndText])),
                        ),
                      ),
                      FloatingActionButton(
                        mini: true,
                        onPressed: () {},
                        child: Image(
                          image: AssetImage('images/facebook2.png'),
                        ),
                      ),
                      FloatingActionButton(
                        mini: true,
                        onPressed: () {},
                        child: Image(
                          image: AssetImage('images/twitter3.png'),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "DON'T HAVE ACCOUNT?  ",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 11,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "SIGN UP",
                      style: TextStyle(
                          color: endBigAndText,
                          fontSize: 11,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
