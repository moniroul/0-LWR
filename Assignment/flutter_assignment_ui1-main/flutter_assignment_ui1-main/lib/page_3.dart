import 'package:flutter/material.dart';
import './page4.dart';

class Page3 extends StatefulWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  _Page3State createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  bool isClear = false;
  TextEditingController emailCtr = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    print(w);
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFFF),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            height: w <= 500 ? h : h / 1.3,
            width: w <= 500 ? w : 400,
            decoration: BoxDecoration(
                border: Border.all(color: Color(0xFFF242B42), width: 0.5),
                gradient: LinearGradient(
                    colors: [Color(0xFFFFFFFFF), Color(0xFFFFFFFFF)])),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 116, left: 24),
                  child: Container(
                    height: 100,
                    width: double.maxFinite,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Welcome Back!',
                          style: TextStyle(
                              fontFamily: 'Urbanist',
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFFF1D1E25)),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          'Sign In to your account',
                          style: TextStyle(
                              fontFamily: 'Urbanist',
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFFF808D9E)),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Container(
                    width: 345,
                    height: 48,
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFFFFFFFF),
                          shape: RoundedRectangleBorder(
                            side:
                                BorderSide(color: Color(0xFFFE9ECF2), width: 0.5),
                            borderRadius: BorderRadius.circular(3),
                          )),
                      label: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          'Sign in with Google',
                          style: TextStyle(
                              fontFamily: 'Urbanist',
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFFF2B3453)),
                        ),
                      ),
                      icon: Row(
                        children: [
                          Image.asset(
                            'assets/sanjid3.png',
                            height: 24,
                            width: 24,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: Container(
                          width: 140,
                          child: Divider(
                            height: 1,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Text(
                          'OR',
                          style: TextStyle(
                              fontFamily: 'Urbanist',
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFFF808D9E)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 5, left: 11),
                        child: Container(
                          width: 140,
                          child: Divider(
                            height: 1,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Container(
                    child: Form(
                        child: TextField(
                      controller: emailCtr,
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFFE9ECF2))),
                        prefixIcon: SizedBox(
                            width: 20,
                            child: Icon(
                              Icons.email_outlined,
                              size: 20,
                            )),
                        labelText: 'Type your emai',
                        labelStyle: TextStyle(
                          fontFamily: 'Urbanist',
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFF7E8CA0),
                        ),
                        suffixIcon: isClear
                            ? IconButton(
                                onPressed: () {
                                  emailCtr.clear();
                                  setState(() {
                                    isClear = false;
                                  });
                                },
                                icon: Icon(Icons.clear , color: Colors.grey, size: 16, ))
                            : SizedBox(),
                      ),
                      onChanged: (value) {
                        if (value.length > 2) {
                          setState(() {
                            isClear = true;
                          });
                        }
                        print(value);
                      },
                    )),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Container(
                    child: Form(
                        child: TextField(
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFFE9ECF2))),
                        suffixIcon: Icon(Icons.visibility_off),
                        prefixIcon: Icon(Icons.lock_outline_rounded),
                        labelText: 'Type your password',
                        labelStyle: TextStyle(
                          fontFamily: 'Urbanist',
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFF7E8CA0),
                        ),
                      ),
                    )),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 260),
                  child: Container(
                    child: InkWell(
                      onTap: () {},
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(
                            fontFamily: 'Urbanist',
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFFF0062FF)),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Container(
                    width: 358,
                    height: 48,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) => Page4()));
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFFF0062FF),
                              elevation: 2,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              )),
                          child: Text(
                            'Sign In',
                            style: TextStyle(
                                fontFamily: 'Urbanist',
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFFFFFFFFF)),
                          )),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Don’t have account? ',
                        style: TextStyle(
                            fontFamily: 'Urbanist',
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFF7E8CA0)),
                      ),
                      InkWell(
                          onTap: () {},
                          child: Text(
                            'Sign Up',
                            style: TextStyle(
                                fontFamily: 'Urbanist',
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFFF0062FF)),
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
