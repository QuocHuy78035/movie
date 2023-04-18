import 'package:flutter/material.dart';
import 'package:movieapp/constant.dart';

class Genres extends StatelessWidget {
  const Genres({super.key});
  @override
  Widget build(BuildContext context) {
    List<String> genres = [
      'Action',
      'Crime',
      'Comedy',
      'Drama',
      'Horror',
      'Animation'
    ];
    return Container(
      height: 36,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: genres.length,
          itemBuilder: (context, index) {
            return GenresCard(genre: genres[index]);
          }
      ),
    );
  }
}

class GenresCard extends StatelessWidget {
  final String genre;
  const GenresCard({super.key, required this.genre});
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.only(left: kDefaultPadding),
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding, vertical: kDefaultPadding/4),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.black26)
      ),
      child: Text(genre, style: TextStyle(fontSize: 16,
          color: kTextColor.withOpacity(0.6), fontWeight: FontWeight.w500),
      ),
    );
  }
}
