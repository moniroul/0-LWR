import 'package:flutter/material.dart';
import 'package:flutter_class_2/HomePage.dart';
import 'package:flutter_class_2/PhotoPage.dart';

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

  List PageList = [HomePage(), PhotoPage()];

  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App Bar
      appBar: AppBar(
        backgroundColor: ColorList[ColorIndex],
        title: Text("Russell APP"),
      ),

      // body area
      body: PageList[pageIndex],

      // floatingActionButton area
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ColorNameChange();
        },
        child: Icon(Icons.edit),
      ),

      // bottomNavigationBar area
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            pageIndex = index;
          });
          print(index);
        },

        backgroundColor: Colors.white,
        selectedItemColor: Color.fromARGB(255, 39, 151, 43),
        unselectedItemColor: Colors.black,
        currentIndex: pageIndex,

        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.photo_sharp),
            label: 'Photo',
          ),
        ],
        
      ),
    );
  }
}
