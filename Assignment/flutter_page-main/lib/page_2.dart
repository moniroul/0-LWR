import 'package:flutter/material.dart';
import 'package:flutter_page/page_3.dart';
import 'package:google_fonts/google_fonts.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/sanjid2.png'),
            SizedBox(
              height: 15,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  //color: const Color.fromARGB(255, 206, 7, 117),
                  height: 134,
                  width: 400,
                  child: Text(
                    'Plan Your Task Easily and Task Your Plan Instantly',
                    style: GoogleFonts.urbanist(
                        textStyle: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w500,
                    )),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 358,
              height: 48,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (_) => Page3()));
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFF0062FF),
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                    child: Text(
                      'Get Started',
                      style: GoogleFonts.urbanist(
                          textStyle: TextStyle(color: Colors.white),
                          fontWeight: FontWeight.w400),
                    )),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Have an account?',
                    style: GoogleFonts.urbanist(
                        textStyle: TextStyle(
                            color: Colors.black54,
                            fontSize: 14,
                            fontWeight: FontWeight.w400)),
                  ),
                  InkWell(
                      onTap: () {},
                      child: Text(
                        'Login',
                        style: GoogleFonts.urbanist(
                            textStyle: TextStyle(
                                color: Color(0xFFF0062FF),
                                fontSize: 15,
                                fontWeight: FontWeight.w600)),
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
