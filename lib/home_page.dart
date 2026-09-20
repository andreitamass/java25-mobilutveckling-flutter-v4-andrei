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
              Text('Naruto'),
              //Image from internet
              Image.network(
                'https://m.media-amazon.com/images/I/8141AtkCPLL._SL1500_.jpg',
                width: 200,
                height: 200,
              ),

            ],
          ),
        ),
      ),  
    );
  }
}