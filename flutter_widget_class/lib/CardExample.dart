import 'package:flutter/material.dart';
import 'dart:ui';

class CustomCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.maxFinite,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Stack(
          children: [
            // Background image
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://imgs.search.brave.com/WH4Rd2yx4oa7-Gw6pCPcmO8j9CBDuKUXuDKVEQm8oys/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMuY3RmYXNzZXRz/Lm5ldC9ocmx0eDEy/cGw4aHEvMmNrYTEw/NE8wVU5tQlNCckcz/eHBqcS9hYmI0ZmY2/NjVmN2VkYjZmNjRi/ZjNiZTk2ODZlYWY2/ZC9oaXN0b3J5LWlt/YWdlcy1jYXJkLmpw/Zw'), // Add your background image here
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                  child: Container(
                    color: Colors.black
                        .withOpacity(0.3), // Adds a semi-transparent layer
                  ),
                ),
              ),
            ),
          
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Download the perfect avatar pictures. \nFind over 100+ of the best free avatar images', // Replace with your desired text
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            ),
           
            Positioned(
              bottom: 10,
              right: 20,
              child: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                    'https://img.freepik.com/free-psd/3d-illustration-person-with-sunglasses_23-2149436188.jpg?size=338&ext=jpg&ga=GA1.1.2008272138.1725667200&semt=ais_hybrid'), // Add your avatar image here
              ),
            ),
         
          ],
        ),
      ),
    );
  }
}
