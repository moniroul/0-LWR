import 'package:flutter/material.dart';

class PhotoPage extends StatelessWidget {
const PhotoPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
      color: Colors.pink,
      child: Center(child: Text("Photo Page"))
    );
  }
}