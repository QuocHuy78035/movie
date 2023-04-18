class Movie{
  int? id, year, numOfRating, criticsReview, metascoreRating;
  double? rating;
  List<String>? genra;
  String? plot, title, poster, backdrop;
  List<Map>? cast;

  Movie({
    this.id,
    this.year,
    this.numOfRating,
    this.criticsReview,
    this.metascoreRating,
    this.rating,
    this.genra,
    this.plot,
    this.title,
    this.poster,
    this.backdrop,
    this.cast
  });
}

List<Movie> movies = [
  Movie(
    id: 1,
    title: 'Bloodshot',
    year: 2020,
    poster: "assets/images/movie_poster1.jpg",
    backdrop: 'assets/images/movie_backdrop1.jpg',
    numOfRating: 15012,
    rating: 8.4,
    criticsReview: 50,
    metascoreRating: 76,
    genra: ['Action', 'Drama'],
    plot: 'Action',
    cast: [
      {
        "originalName": "James Mangold",
        "movieName": "Director",
        "image": "assets/images/actor.png",
      },
      {
        "originalName": "Matt Damon",
        "movieName": "Carroll",
        "image": "assets/images/actor.png",
      },
      {
        "originalName": "Christian Bale",
        "movieName": "Ken Miles",
        "image": "assets/images/actor.png",
      },
      {
        "originalName": "Catriona Balfe",
        "movieName": "Mollie",
        "image": "assets/images/actor.png",
      },
    ],
  ),
  Movie(
    id: 2,
    title: 'Ford v Ferrari',
    year: 2020,
    poster: "assets/images/movie_poster2.jpg",
    backdrop: 'assets/images/movie_backdrop2.jpg',
    numOfRating: 15012,
    rating: 8.1,
    criticsReview: 70,
    metascoreRating: 86,
    genra: ["Action", "Biography", "Drama"],
    plot: 'Racing',
    cast: [
      {
        "originalName": "James Mangold",
        "movieName": "Director",
        "image": "assets/images/actor.png",
      },
      {
        "originalName": "Matt Damon",
        "movieName": "Carroll",
        "image": "assets/images/actor.png",
      },
      {
        "originalName": "Christian Bale",
        "movieName": "Ken Miles",
        "image": "assets/images/actor.png",
      },
      {
        "originalName": "Caitriona Balfe",
        "movieName": "Mollie",
        "image": "assets/images/actor.png",
      },
    ],
  ),
  Movie(
    id: 3,
    title: "Onward",
    year: 2020,
    poster: "assets/images/movie_poster3.jpg",
    backdrop: 'assets/images/movie_backdrop3.jpg',
    numOfRating: 150212,
    rating: 7.6,
    criticsReview: 50,
    metascoreRating: 79,
    genra: ["Action", "Drama"],
    plot: 'Hoat hinh',
    cast: [
      {
        "originalName": "James Mangold",
        "movieName": "Director",
        "image": "assets/images/actor.png",
      },
      {
        "originalName": "Matt Damon",
        "movieName": "Carroll",
        "image": "assets/images/actor.png",
      },
      {
        "originalName": "Christian Bale",
        "movieName": "Ken Miles",
        "image": "assets/images/actor.png",
      },
      {
        "originalName": "Caitriona Balfe",
        "movieName": "Mollie",
        "image": "assets/images/actor.png",
      },
    ],
  ),
];