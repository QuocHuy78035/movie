import 'package:flutter/material.dart';
import 'package:movieapp/model/movies.dart';

import '../constant.dart';

class TitleDuractionAndFavBtn extends StatelessWidget {
  const TitleDuractionAndFavBtn({Key? key, required this.movie}) : super(key: key);
  final Movie movie;
  @override
  Widget build(BuildContext context) {
    return Padding(padding:  const EdgeInsets.only(left: kDefaultPadding, right: kDefaultPadding,
                                    bottom: kDefaultPadding, top: kDefaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('${movie.title}', style: Theme.of(context).textTheme.headline4?.copyWith(color: kTextColor),),
                const SizedBox(height: kDefaultPadding/2,),
                Row(
                  children: [
                    Text('${movie.year}', style: TextStyle(color: kTextColor.withOpacity(0.6), fontWeight: FontWeight.w500),),
                    const SizedBox(width: kDefaultPadding/2,),
                    Text('PG-13', style: TextStyle(color: kTextColor.withOpacity(0.6), fontWeight: FontWeight.w500),),
                    const SizedBox(width: kDefaultPadding,),
                    Text("2h 32min", style: TextStyle(color: kTextColor.withOpacity(0.6), fontWeight: FontWeight.w500),)
                  ],
                )
              ],
            ),
          ),
          TextButton(
            onPressed: (){},
            style: ButtonStyle(backgroundColor: MaterialStateProperty.all(kSecondaryColor),
                fixedSize: MaterialStateProperty.all<Size>(const Size(60, 60))
            ),
            child: const Icon(Icons.add, color: Colors.white,),
          )
        ],
      ),
    );
  }
}
