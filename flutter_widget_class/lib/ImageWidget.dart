import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Offline Imageview"),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 160,
            width: 140.0,
            child: Image.asset(
              'assets/3d-render-stock-images.webp',
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 160,
            width: 140.0,
            child: Image.asset(
              'assets/Gratisography-example-image.webp',
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Online Imageview"),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 160,
            width: 140.0,
            child: Image.asset(
              'assets/3d-render-stock-images.webp',
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 160,
            width: 140.0,
            child: Image.asset(
              'assets/Gratisography-example-image.webp',
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Online Imageview"),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 160,
            width: 140.0,
            child: Image.network(
              'https://imgs.search.brave.com/YJk5ebqHk4hMIiTt9el3Gy-3YkNPEQOR8GWvjHMlys4/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5pc3RvY2twaG90/by5jb20vaWQvMTE4/ODcyODc3Ny9waG90/by9mcmVlLW91dGRv/b3ItbGlicmFyeS53/ZWJwP2I9MSZzPTYx/Mng2MTImdz0wJms9/MjAmYz1tLUFRYmRp/YkoyZU1tOUFfeWg5/RnFnVWZNd29FbTRr/TVI5Q1VWWWxmcEFB/PQ',
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 160,
            width: 140.0,
            child: Image.network(
              'https://imgs.search.brave.com/YJk5ebqHk4hMIiTt9el3Gy-3YkNPEQOR8GWvjHMlys4/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5pc3RvY2twaG90/by5jb20vaWQvMTE4/ODcyODc3Ny9waG90/by9mcmVlLW91dGRv/b3ItbGlicmFyeS53/ZWJwP2I9MSZzPTYx/Mng2MTImdz0wJms9/MjAmYz1tLUFRYmRp/YkoyZU1tOUFfeWg5/RnFnVWZNd29FbTRr/TVI5Q1VWWWxmcEFB/PQ',
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 160,
            width: 140.0,
            child: Image.network(
              'https://imgs.search.brave.com/YJk5ebqHk4hMIiTt9el3Gy-3YkNPEQOR8GWvjHMlys4/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5pc3RvY2twaG90/by5jb20vaWQvMTE4/ODcyODc3Ny9waG90/by9mcmVlLW91dGRv/b3ItbGlicmFyeS53/ZWJwP2I9MSZzPTYx/Mng2MTImdz0wJms9/MjAmYz1tLUFRYmRp/YkoyZU1tOUFfeWg5/RnFnVWZNd29FbTRr/TVI5Q1VWWWxmcEFB/PQ',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
