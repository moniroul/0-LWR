import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App Bar
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 168, 240, 171),
        title: Text("Russell APP"),
      ),

      // body area
      body: Container(
        color: const Color.fromARGB(255, 255, 255, 255),
        child: Center(
          child: Text(
            " This is my First Apps Home Page",
            style: TextStyle(
                fontSize: 20,
                color: const Color.fromARGB(255, 0, 0, 0),
                fontWeight: FontWeight.w700),
          ),
        ),
      ),

      // floatingActionButton area
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Button Clicked");
        },
        child: Icon(Icons.home),
      ),

      // bottomNavigationBar area
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.music_note_outlined),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
      ),

    );
  }
}
