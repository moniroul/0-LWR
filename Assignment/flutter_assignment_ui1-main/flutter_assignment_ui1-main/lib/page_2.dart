import 'package:flutter/material.dart';
import './page_3.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: h,
        width: w,
        child: Column(
          children: [
            Container(
                color: Color.fromARGB(255, 242, 245, 245),
                width: w,
                height: h / 1.6,
                child: Image.asset('assets/sanjid2.png')),
            SizedBox(
              height: 15,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  child: Text(
                    'Plan Your Task Easily and Task Your Plan Instantly',
                    style: TextStyle(
                        fontFamily: 'Urbanist',
                        fontSize: 32,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFFF242B42)),
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
                      style: TextStyle(
                          fontFamily: 'Urbanist',
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFFFFFFFFF)),
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
                    style: TextStyle(
                        fontFamily: 'Urbanist',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFF7E8CA0)),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'Login',
                      style: TextStyle(
                          fontFamily: 'Urbanist',
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFFF0062FF)),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
