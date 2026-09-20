import 'package:flutter/material.dart';

class DetailsComic extends StatelessWidget {
  final String title;

  //Constructor
  const DetailsComic({
    super.key,
    required this.title,
  });

//Building app
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      //Creates bar with Details
      appBar: AppBar(
        title: Text('Details'),
      ),
      body: Center(
        //title has the variable of what the user presses
        child: Text('Details about $title'),
      ),
    );
  }
}