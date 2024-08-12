import 'package:flutter/material.dart';

class ButtonWidget extends StatefulWidget {
  ButtonWidget({Key? key}) : super(key: key);

  @override
  _ButtonWidgetState createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Color.fromARGB(255, 34, 178, 250),
      child: Column(
        children: [

          SizedBox(height: 50),

          Text(
            "Button Widget",
            style: TextStyle(
                fontSize: 20, color: const Color.fromARGB(255, 0, 0, 0)),
          ),

          SizedBox(height: 50),

          // button 1 
          MaterialButton(
              color: Colors.white,
              onPressed: () {
                print("Button 1");
              },
              onLongPress: () {
                print("Button 1 long press ...");
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Text("Button 1"),
              )),

          SizedBox(height: 50),

          // button 2
          ElevatedButton(
              onPressed: () {
                print("Button 2");
              },
              child: Text("Button 2")),

          SizedBox(height: 50),

          TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
              ),
              onPressed: () {},
              child: Text("Button 3"))
        ],
      ),
    );
  }
}
