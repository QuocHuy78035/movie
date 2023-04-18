import 'package:flutter/material.dart';
import 'package:movieapp/constant.dart';
import 'package:movieapp/details/detail_screen.dart';
import '../model/movies.dart';

class MovieCarousel extends StatefulWidget {
  const MovieCarousel({Key? key}) : super(key: key);
  @override
  State<MovieCarousel> createState() => _MovieCarouselState();
}

class _MovieCarouselState extends State<MovieCarousel> {
  PageController? _pageController;
  int initialPage = 1;
  Movie? movie;
  @override
  void initState(){
    super.initState();
    _pageController = PageController(
        viewportFraction: 0.8,
        initialPage: initialPage
    );
  }

  @override
  void dispose(){
    super.dispose();
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: AspectRatio(aspectRatio: 0.85,
        child: PageView.builder(
            controller: _pageController,
            itemCount: movies.length,
            itemBuilder: (context, index){
              return MovieCard(movie: movies[index]);
            }
        ) ,
      ),
    );
  }
}


class MovieCard extends StatelessWidget {
  final Movie movie;
  const MovieCard({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding
        ),
        child: InkWell(
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context){
                return DetailScreen(movie: movie);
              }),
          ),
          child: Column(
            children: <Widget>[
              Expanded(child: Container(
                decoration:  BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: const [kDefaultShadow],
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        // image: NetworkImage('${movie?.poster}')
                        image: AssetImage('${movie.poster}')
                    )
                ),
              )),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: kDefaultPadding/4),
                child: Text('${movie.title}', style: Theme.of(context).textTheme.headline5?.copyWith(
                    fontWeight: FontWeight.w600
                ),),
              ),
              Container(
                padding: const EdgeInsets.only(bottom: kDefaultPadding*2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Icon(Icons.star, color: Colors.yellow,),
                    Text('${movie.rating}', style: Theme.of(context).textTheme.bodyText2,)
                  ],
                ),
              )
            ],
          ),
        )
    );
  }
}
