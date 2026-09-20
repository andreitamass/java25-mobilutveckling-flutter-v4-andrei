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

  //List containing Mangas
  List<String> mangaList = [
    'Naruto',
    'One Piece',
    'Bleach',
  ];

  //List containing Comics
  List<String> comicList = [
    'Spider-Man',
    'The Boys',
    'Batman',
  ];

  //Map to store information about each
  //Map<String, String> narutoManga = {
  //  'title': 'Naruto',
  //  'Description': 'A story about Ninjas',
  //  'image': 'https://m.media-amazon.com/images/I/71WECnGLtIL._SL1200_.jpg',
  //};

  @override
  Widget build(BuildContext context) {
    //if Switch is on manga then manga is shown on main and so for comics too
    final selectedList = isManga ? mangaList : comicList;
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
            //Creates cards for our comics
            child: ListView.builder(
              itemCount: selectedList.length,
              itemBuilder: (context, index) {
                return Card(
                  //Shows title
                  child: ListTile(
                    //Shows the image to the side of the title
                    leading: selectedList[index] == 'Naruto'
                    ? Image.network(
                      'https://m.media-amazon.com/images/I/71WECnGLtIL._SL1200_.jpg',
                      width: 100,
                      height: 100,
                    )
                    : selectedList[index] == 'One Piece'
                    ? Image.network(
                      'https://m.media-amazon.com/images/I/91NxYvUNf6L._SL1500_.jpg',
                      width: 100,
                      height: 100,
                    )
                    : selectedList[index] == 'Bleach'
                    ? Image.network(
                      'https://m.media-amazon.com/images/I/81vbN16NtXL._SL1500_.jpg',
                      width: 100,
                      height: 100,
                    )
                    : null,
                    
                    title: Text(
                      //Get title from our list for manga and comics
                      selectedList[index],
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    trailing: IconButton(
                      onPressed: () {
                        print('Comic added to favorites');
                      },
                      icon: Icon(Icons.star),
                    ),
                    //Opens details site
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailsComic(),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}