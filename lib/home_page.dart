import 'package:flutter/material.dart';
import 'details_page.dart';

//StatlessWidget need due to the state of app can change
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
  }
  //Manga i chosen from the beginning
  class _HomePageState extends State<HomePage> {
  bool isManga = true;

  @override
  Widget build(BuildContext context) {
    //Template for layout
    return Scaffold(
      //Bar on top of title
      appBar: AppBar(
        title: Text('ComicReader'),
      ),
      //Creates card that hold the title and children information and image in the center
            body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
          Text(isManga ? 'Manga' : 'Comics'),
          //Switch to choose between Manga and Comics
          //Interactive widget thats swaps from Manga to Comics
          Switch(
            value: isManga,
            onChanged: (bool value) {
              setState(() {
                isManga = value;
              });
            },
          ),
          //Comic card
          Expanded(
            child: Center(
              child: Card(
                child: Column(
                  children: [
                    // Font size for text and style
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

                    //Space between text and card
                    SizedBox(height: 10),

                    //Restricting description to a width of 300
                    SizedBox(
                      width: 300,
                      child: Text(
                        'Naruto is a famous Japanese manga and anime series created by Masashi Kishimoto. It is an epic adventure about ninjas, friendship, and growing up',
                      ),
                    ),

                    //Button that opens the details page
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailsComic(),
                          ),
                        );
                      },
                      child: Text('More Information'),
                    ),

                    //Favorite button
                    IconButton(
                      onPressed: () {
                        print('Comic added to favorites');
                      },
                      icon: Icon(Icons.star),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),  
    );
  }
}