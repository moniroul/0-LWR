import 'package:flutter/material.dart';
import 'package:flutter_widget_class/Container_row_collumn.dart';
import 'package:flutter_widget_class/TextWidget.dart';
import 'package:flutter_widget_class/button_widget.dart';

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "1 => Text view class part",
              style: TextStyle(fontSize: 20 , fontWeight: FontWeight.w600 ),
            ),
          ),
          // Text view class
          TextWidget(),
          SizedBox(height: 30),
           Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "1 => Row Column Container class part",
              style: TextStyle(fontSize: 20 , fontWeight: FontWeight.w600 ),
            ),
          ),
          // Container Row and Column
          Container_row_collumn(),
          SizedBox(height: 30),

           Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "1 => Button class part",
              style: TextStyle(fontSize: 20 , fontWeight: FontWeight.w600 ),
            ),
          ),

          // Button 
          ButtonWidget(),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
