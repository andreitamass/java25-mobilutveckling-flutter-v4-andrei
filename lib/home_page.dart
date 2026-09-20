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
      body: Center(
        child: Text('Mina serier'),
      ),
    );
  }
}