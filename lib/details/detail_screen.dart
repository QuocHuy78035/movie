import 'package:flutter/material.dart';
import 'package:movieapp/model/movies.dart';
import 'body_detail.dart';

class DetailScreen extends StatelessWidget {
  final Movie movie;
  const DetailScreen({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyDetail(movie: movie,),
    );
  }
}
