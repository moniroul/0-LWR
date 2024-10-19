import 'package:flutter/material.dart';
import 'package:flutter_assignment_ui/page_2.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _PageState();
}

class _PageState extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: w,
              height: h / 1.9,
              child: Image.asset(
                'assets/sanjid.png',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Center(
              child: Column(
                children: [
                  Text(
                    'Easy Way to Get',
                    style: TextStyle(
                        fontFamily: 'Urbanist',
                        fontSize: 32,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFFF242B42)),
                  ),
                  Text(
                    'Better Life',
                    style: TextStyle(
                      fontFamily: 'Urbanist',
                      fontSize: 32,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFFF242B42),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Column(
                      children: [
                        Text(
                          'Amet minim mollit non deserunt',
                          style: TextStyle(
                            fontFamily: 'Urbanist',
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFF7E8CA0),
                          ),
                        ),
                        Text(
                          'ullamco est sit aliqua dolor do amet',
                          style: TextStyle(
                            fontFamily: 'Urbanist',
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFF7E8CA0),
                          ),
                        ),
                        Text(
                          'sint. Velit officia consequat.',
                          style: TextStyle(
                            fontFamily: 'Urbanist',
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFF7E8CA0),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        //arow icon
                        InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) => Page2()));
                          },
                          child: CircleAvatar(
                              radius: 30,
                              backgroundColor: Color(0xFFF0062FF),
                              child: Icon(
                                Icons.arrow_forward_outlined,
                                color: Colors.white,
                              )),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
