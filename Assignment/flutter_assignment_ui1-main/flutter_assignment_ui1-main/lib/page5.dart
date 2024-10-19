import 'package:flutter/material.dart';

class Page5 extends StatefulWidget {
  const Page5({Key? key}) : super(key: key);

  @override
  _Page5State createState() => _Page5State();
}

class _Page5State extends State<Page5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          Padding(
            padding: const EdgeInsets.only(left: 27, right: 10, top: 57),
            child: Row(
              children: [
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome back,',
                        style: TextStyle(
                            fontFamily: 'Urbanist',
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFF696974)),
                      ),
                      Text(
                        'Jovanca!',
                        style: TextStyle(
                            fontFamily: 'Urbanist',
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFFF242B42)),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 180),
                  child: Icon(
                    Icons.search,
                    weight: 24,
                    size: 24,
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  height: 32,
                  width: 32,
                  child: CircleAvatar(
                    radius: 100,
                    backgroundImage: AssetImage("assets/sanjid6.png"),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 27, right: 10),
            child: Container(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Card(
                    elevation: 2,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          gradient: LinearGradient(colors: [
                            Color(0xFFF5FA6FB),
                            Color(0xFFFBC45E3),
                            Color(0xFFFF88049),
                          ])),
                      height: 176,
                      width: 335,
                    ),
                  ),
                  Positioned(
                      left: 30,
                      top: 20,
                      child: Container(
                        child: Text(
                          'Workspace',
                          style: TextStyle(
                              fontFamily: 'Urbanist',
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFFFFFFFFF)),
                        ),
                      )),
                  Positioned(
                    top: 55,
                    child: Card(
                      color: Color(0xFFFFFFFFF),
                      child: Container(
                        height: 115,
                        width: 319,
                        child: Center(
                          child: Text(
                            'Top Card',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                      left: 20,
                      child: Container(
                        padding: EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                          
                          border: Border(
                              left: BorderSide(
                                  color: Color(0xFFFE9ECF2), width: 1),
                              right: BorderSide(
                                  color: Color(0xFFFE9ECF2), width: 1),
                              top: BorderSide(
                                  color: Color(0xFFFE9ECF2), width: 1),
                              bottom: BorderSide(
                                  color: Color(0xFFFE9ECF2), width: 1)),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Image.asset('assets/sanjid8.png'),
                        height: 36,
                        width: 36,
                      ))
                ],
              ),
            ),
          )
        ]));
  }
}
