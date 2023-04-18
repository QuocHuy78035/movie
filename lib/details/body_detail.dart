import 'package:flutter/material.dart';
import 'package:movieapp/constant.dart';
import 'package:movieapp/details/title_duraction_and_fav_btn.dart';
import 'package:movieapp/model/movies.dart';
import 'package:movieapp/screens/genres_card.dart';
import 'backdrop_rating.dart';
import 'genner.dart';

class BodyDetail extends StatelessWidget {
  final Movie movie;
  const BodyDetail({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          BackdropAndRating(size: size, movie: movie,),
          TitleDuractionAndFavBtn(movie: movie,),
          Genner(movie: movie,),
          Padding(padding: const EdgeInsets.only(left: kDefaultPadding, right: kDefaultPadding, top: kDefaultPadding*2, bottom: kDefaultPadding),
              child: Row(
                children: const <Widget>[
                  Text('Plot Summary', style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),)
                ],
              )
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Text('American car design Carrol Shelby and driver Kn Miles battle'
                'corporate interference and the laws of physics to build'
                'a revolutionary race car for Ford in order',
              style: TextStyle(fontSize: 15, color: Colors.black45),),
          ),
          CastAndCrew(casts: movie.cast)
        ],
      ),
    );
  }
}

class CastAndCrew extends StatelessWidget {
  final List? casts;
  const CastAndCrew({Key? key, required this.casts}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: kDefaultPadding, top: kDefaultPadding*2, bottom: kDefaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Cast & Crew',
            style: Theme.of(context).textTheme.headline5,),
            const SizedBox(height: kDefaultPadding/2,),
            SizedBox(height: 160,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: casts?.length,
                  itemBuilder: (context, index) => Container())
              )
          ],
        ),
    );
  }
}



