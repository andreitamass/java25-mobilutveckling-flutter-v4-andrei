import 'package:flutter/material.dart';

//StatlessWidget need due to the state of app not needing change
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    //Template for layout
    return Scaffold(
      //Bar on top of title
      appBar: AppBar(
        title: Text('ComicReader'),
      ),
      //Creates card that hold the title and children information and image in the center
      body: Center(
        child: Card(
          child: Column(
            children: [
              //Fontsize for text and style
              Text(
                'Naruto',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                ),
              ),
              //Image from internet
              Image.network(
                'https://m.media-amazon.com/images/I/8141AtkCPLL._SL1500_.jpg',
                width: 200,
                height: 200,
              ),
              //The space between text and card
              SizedBox(height: 10),
              //Restricting descriptions to a widht of 300
              SizedBox(
                width: 300,
                child: Text(
                  'Naruto is a famous Japanese manga and anime series created by Masashi Kishimoto. It is an epic adventure about ninjas, friendship, and growing up'
                ),
              ),
            ],
          ),
        ),
      ),  
    );
  }
}