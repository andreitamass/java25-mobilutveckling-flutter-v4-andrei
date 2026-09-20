import 'package:flutter/material.dart';

class DetailsComic extends StatelessWidget {

  const DetailsComic({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      //Creates bar with Details
      appBar: AppBar(
        title: Text('Details'),
      ),
      body: Center(
        child: Text('Details about Naruto'),
      ),
    );
  }
}