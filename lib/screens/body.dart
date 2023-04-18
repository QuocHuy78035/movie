import 'package:flutter/material.dart';
import 'package:movieapp/constant.dart';
import 'package:movieapp/model/movies.dart';
import 'categories.dart';
import 'genres_card.dart';
import 'movie_card.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const <Widget>[
          CategoryList(),
          Genres(),
          MovieCarousel()
        ],
      ),
    );
  }
}







