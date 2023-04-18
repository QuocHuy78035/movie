import 'package:flutter/material.dart';

import '../constant.dart';
import '../model/movies.dart';

class BackdropAndRating extends StatelessWidget {
  const BackdropAndRating({Key? key, required this.size, required this.movie}) : super(key: key);
  final Size size;
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height*0.4,
      child: Stack(
        children: <Widget>[
          SafeArea(
              child: Container(
                height: size.height*0.4-50,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(50)),
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('${movie.backdrop}')
                    )
                ),
              )),
          //RATING BOX
          Positioned(
            bottom: 0, right: 0,
            child: Container(
              width: size.width * 0.9,
              height: 80,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(50), bottomLeft: Radius.circular(50)),
                  boxShadow: [kDefaultShadow]
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Icon(Icons.star, color: Colors.yellow,),
                      Row(
                        children: <Widget>[
                          Text('${movie.rating}', style: TextStyle(fontSize: 18,
                              fontWeight: FontWeight.w600, color: Colors.black87.withOpacity(0.6)),),
                          Text('/10', style: TextStyle(color: Colors.black87.withOpacity(0.6),
                              fontWeight: FontWeight.w600),)
                        ],
                      ),
                      Text('${movie.numOfRating}', style: TextStyle(color: Colors.black87.withOpacity(0.4),
                          fontWeight: FontWeight.w500),)
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Icon(Icons.star_border, size: 36,),
                      Text('Rate This', style: TextStyle(fontSize: 18, color: Colors.black87.withOpacity(0.6),
                          fontWeight: FontWeight.w500),)
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        decoration: const BoxDecoration(
                            color: Colors.green
                        ),
                        padding: const EdgeInsets.all(kDefaultPadding/4),
                        child: Text('${movie.metascoreRating}', style: const TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),),
                      ),
                      Text('Metastore', style: TextStyle(fontSize: 18, color: Colors.black87.withOpacity(0.6),
                          fontWeight: FontWeight.w500),),
                      Text('${movie.criticsReview} critic reviews', style: TextStyle(color: Colors.black87.withOpacity(0.4),
                          fontWeight: FontWeight.w500),)
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

