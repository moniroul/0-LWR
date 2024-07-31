import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {



  List<Color> ColorList = [
    Colors.green,
    Colors.yellow,
    Colors.blue,
    Colors.red,
    Colors.pink,
  ];

  List<String> ColorsNames = ["Green", "Yellow", "Blue", "Red", "Pink"];

  int ColorIndex = 0;

  void ColorNameChange() {
    setState(() {
      ColorIndex = ColorIndex + 1;
      if (ColorIndex == 5) {
        ColorIndex = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App Bar
      appBar: AppBar(
        backgroundColor: ColorList[ColorIndex],
        title: Text("Russell APP"),
      ),

      // body area
      body: Container(
        color: const Color.fromARGB(255, 255, 255, 255),
        child: Center(
          child: Text(
            "Active Color : " + ColorsNames[ColorIndex] + " Index ${ColorIndex}",
            style: TextStyle(
                fontSize: 20,
                color: ColorList[ColorIndex],
                fontWeight: FontWeight.w700),
          ),
        ),
      ),

      // floatingActionButton area
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ColorNameChange();
        },
        child: Icon(Icons.edit),
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
