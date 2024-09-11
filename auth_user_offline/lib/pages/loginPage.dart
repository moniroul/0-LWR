import 'package:auth_user_offline/pages/homePage.dart';
import 'package:auth_user_offline/pages/registerPage.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Login1 extends StatefulWidget {
  const Login1({Key? key}) : super(key: key);

  @override
  _Login1State createState() => _Login1State();
}

class _Login1State extends State<Login1> {
  
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();

  Userlogin() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    if (email.text == "" || pass.text == "") {
      print("empty");
    } else {
      if (sp.getString("email") != null) {
        String emailget = sp.getString("email")!;
        String passget = sp.getString("pass")!;

        if (emailget == email.text && passget == pass.text) {
          sp.setString("login", "true");
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => HomePage()));
        } else {
          print("Data not valid");
        }
      } else {
        print("No user Registered");
      }
    }
  }

  @override
  void initState() {
    Future.delayed(Duration(microseconds: 2), () async {
      SharedPreferences sp = await SharedPreferences.getInstance();
      if (sp.getString("login") != null) {
        if (sp.getString("login") == "true") {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => HomePage()));
        }
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back)),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 20,
            ),
            child: Container(
              child: Text(
                'Login',
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SizedBox(height: 5),
          Card(
            shadowColor: Colors.blueAccent,
            elevation: 20,
            margin: EdgeInsets.all(20),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Container(
              padding: EdgeInsets.all(20),
              child: Container(
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    TextField(
                      controller: email,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: 'Email ',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      controller: pass,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      height: 50,
                      width: double.maxFinite,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF00BFA5),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () async {
                          await Userlogin();
                        },
                        child: Text('Login'),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 50,
                      width: double.maxFinite,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 235, 255, 252),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => Register()));
                        },
                        child: Text('Go to Register'),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
