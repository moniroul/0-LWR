import 'package:flutter/material.dart';
import 'package:flutter_widget_class/Container_row_collumn.dart';
 

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LWR Widget Class"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Container_row_collumn(),
    );
  }
}
