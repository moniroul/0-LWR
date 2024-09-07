import 'package:flutter/material.dart';

class CardStackWdget extends StatelessWidget {
  const CardStackWdget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            
            Container(
              height: 320,
              width: double.maxFinite,
              child: Card(
                elevation: 12,
                color: Color.fromARGB(255, 255, 255, 255),
                margin: EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // image design
                    Container(
                      margin: EdgeInsets.all(10),
                      // use of clipRRect
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            topLeft: Radius.circular(10)),
                        child: Image.network(
                            height: 160,
                            width: double.maxFinite,
                            fit: BoxFit.cover,
                            "https://gratisography.com/wp-content/uploads/2024/03/gratisography-funflower-800x525.jpg"),
                      ),
                    ),

                    // text design
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 4),
                      child: Text(
                        "Design exploration for a mental health app that features an AI chatbot Illustrations",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 4),
                      child: Text(
                        "12mins ago",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w400),
                      ),
                    )
                  ],
                ),
              ),
            ),

            // second card

            Positioned(
              top: 40,
              right: 40,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color.fromARGB(255, 193, 135, 0).withOpacity(.7)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "New arrive",
                    style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
