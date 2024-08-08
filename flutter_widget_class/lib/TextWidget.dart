import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextWidget extends StatelessWidget {
  TextWidget({Key? key}) : super(key: key);

  String Data =
      "Lorem ipsum dolor sit amet lorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit ametlorem ipsum dolor sit amet";

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Text(
          Data,
          overflow: TextOverflow.ellipsis,
          maxLines: 5,
          textAlign: TextAlign.justify,
          style:
              GoogleFonts.firaSans(fontSize: 20, fontWeight: FontWeight.w600),
        ),
      )),
    );
  }
}
