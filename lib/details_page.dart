import 'package:flutter/material.dart';
import 'details_page.dart';

class DetailsComic extends StatelessWidget {

  const DetailsComic({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Details'),
      ),
      body: Center(
        child: Text('Details about Naruto'),
      ),
    );
  }
}