class Movie {
  final int id;
  final String name;
  final String story;  // Add the story field
  final double imdbRating;
  final String imageUrl;
  final String? director;
  final String? genre;
  final int? year;

  Movie({
    required this.id,
    required this.name,
    required this.story,  // Include story in constructor
    required this.imdbRating,
    required this.imageUrl,
    this.director,
    this.genre,
    this.year,
  });



}