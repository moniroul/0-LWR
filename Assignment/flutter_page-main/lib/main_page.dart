import 'package:flutter/material.dart';
import 'package:flutter_page/page_2.dart';
import 'package:google_fonts/google_fonts.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _PageState();
}

class _PageState extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 424,
              width: 375,
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
                    style: GoogleFonts.urbanist(
                      textStyle:
                          TextStyle(fontSize: 32, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Text('Better Life',
                      style: GoogleFonts.urbanist(
                        textStyle: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFFF242B42)),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Column(
                      children: [
                        Text(
                          'Amet minim mollit non deserunt',
                          style: GoogleFonts.urbanist(
                              textStyle: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w200,
                                  color: Color(0xFFF7E8CA0))),
                        ),
                        Text(
                          'ullamco est sit aliqua dolor do amet',
                          style: GoogleFonts.urbanist(
                              textStyle: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w200,
                                  color: Color(0xFFF7E8CA0))),
                        ),
                        Text(
                          'sint. Velit officia consequat.',
                          style: GoogleFonts.urbanist(
                              textStyle: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w200,
                                  color: Color(0xFFF7E8CA0))),
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
