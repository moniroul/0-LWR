import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselSliderExample extends StatefulWidget {
  const CarouselSliderExample({Key? key}) : super(key: key);

  @override
  _CarouselSliderExampleState createState() => _CarouselSliderExampleState();
}

class _CarouselSliderExampleState extends State<CarouselSliderExample> {
  
  List slidesdata = [1, 2, 3, 4, 5, 6, 7];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: CarouselSlider(
        options: CarouselOptions(
            height: 200.0,
            initialPage: 4,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 5)),
        items: slidesdata.map((item) {
          return Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://imgs.search.brave.com/WH4Rd2yx4oa7-Gw6pCPcmO8j9CBDuKUXuDKVEQm8oys/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMuY3RmYXNzZXRz/Lm5ldC9ocmx0eDEy/cGw4aHEvMmNrYTEw/NE8wVU5tQlNCckcz/eHBqcS9hYmI0ZmY2/NjVmN2VkYjZmNjRi/ZjNiZTk2ODZlYWY2/ZC9oaXN0b3J5LWlt/YWdlcy1jYXJkLmpw/Zw"))),
              child: Center(
                child: Text(
                  'Slide  ${item}',
                  style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w800),
                ),
              ));
        }).toList(),
      ),
    );
  }
}
