import 'package:flutter/material.dart';

class DetailsComic extends StatelessWidget {
  final String title;

  const DetailsComic({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      //Creates bar with Details
      appBar: AppBar(
        title: Text('Details'),
      ),
      body: Center(
        child: Text('Details about $title'),
      ),
    );
  }
}