import 'package:flutter/cupertino.dart';
import 'package:movieapp/model/movies.dart';

import '../screens/genres_card.dart';

class Genner extends StatelessWidget {
  final Movie movie;
  const Genner({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: SizedBox(
        height: 36,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: movie.genra?.length,
            itemBuilder: (context, index){
              return GenresCard(genre: movie.genra![index]);
            }
        ),
      ),
    );
  }
}
