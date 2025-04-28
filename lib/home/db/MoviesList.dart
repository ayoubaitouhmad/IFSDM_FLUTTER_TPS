import '../models/Movie.dart';

class MoviesList {
  // 50 sample movie records with image attribute

  static List<Movie> movies = [
    Movie(
      id: 1,
      name: "The Shawshank Redemption",
      imdbRating: 9.3,
      director: "Frank Darabont",
      genre: "Drama",
      year: 1994,
      story:
          "Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.",
      imageUrl:
          "https://m.media-amazon.com/images/M/MV5BMDFkYTc0MGEtZmNhMC00ZDIzLWFmNTEtODM1ZmRlYWMwMWFmXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg",
    ),
    Movie(
      id: 2,
      name: "The Godfather",
      imdbRating: 9.2,
      director: "Francis Ford Coppola",
      genre: "Crime, Drama",
      year: 1972,
      story:
          "The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.",
      imageUrl:
          "https://m.media-amazon.com/images/M/MV5BM2MyNjYxNmUtYTAwNi00MTYxLWJmNWYtYzZlODY3ZTk3OTFlXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg",
    ),
    Movie(
      id: 3,
      name: "The Dark Knight",
      imdbRating: 9.0,
      director: "Christopher Nolan",
      genre: "Action, Crime, Drama",
      year: 2008,
      story:
          "When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.",
      imageUrl:
          "https://m.media-amazon.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_.jpg",
    ),
    Movie(
      id: 4,
      name: "The Godfather: Part II",
      imdbRating: 9.0,
      director: "Francis Ford Coppola",
      genre: "Crime, Drama",
      year: 1974,
      story:
          "The early life and career of Vito Corleone in 1920s New York City is portrayed, while his son, Michael, expands and tightens his grip on the family crime syndicate.",
      imageUrl:
          "https://m.media-amazon.com/images/M/MV5BMWMwMGQzZTItY2JlNC00OWZiLWIyMDctNDk2ZDQ2YjRjMWQ0XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg",
    ),
    Movie(
      id: 5,
      name: "12 Angry Men",
      imdbRating: 9.0,
      director: "Sidney Lumet",
      genre: "Crime, Drama",
      year: 1957,
      story:
          "A jury holdout attempts to prevent a miscarriage of justice by forcing his colleagues to reconsider the evidence.",
      imageUrl:
          "https://m.media-amazon.com/images/M/MV5BMWU4N2FjNzYtNTVkNC00NzQ0LTg0MjAtYTJlMjFhNGUxZDFmXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_.jpg",
    ),
    Movie(
      id: 6,
      name: "Schindler's List",
      imdbRating: 8.9,
      director: "Steven Spielberg",
      genre: "Biography, Drama, History",
      year: 1993,
      story:
          "In German-occupied Poland during World War II, industrialist Oskar Schindler gradually becomes concerned for his Jewish workforce after witnessing their persecution by the Nazis.",
      imageUrl:
          "https://m.media-amazon.com/images/M/MV5BNDE4OTMxMTctNmRhYy00NWE2LTg3YzItYTk3M2UwOTU5Njg4XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_.jpg",
    ),
    Movie(
      id: 7,
      name: "The Lord of the Rings: The Return of the King",
      imdbRating: 8.9,
      director: "Peter Jackson",
      genre: "Action, Adventure, Drama",
      year: 2003,
      story:
          "Gandalf and Aragorn lead the World of Men against Sauron's army to draw his gaze from Frodo and Sam as they approach Mount Doom with the One Ring.",
      imageUrl:
          "https://m.media-amazon.com/images/M/MV5BNzA5ZDNlZWMtM2NhNS00NDJjLTk4NDItYTRmY2EwMWZlMTY3XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg",
    ),
    Movie(
      id: 8,
      name: "Pulp Fiction",
      imdbRating: 8.9,
      director: "Quentin Tarantino",
      genre: "Crime, Drama",
      year: 1994,
      story:
          "The lives of two mob hitmen, a boxer, a gangster and his wife, and a pair of diner bandits intertwine in four tales of violence and redemption.",
      imageUrl:
          "https://m.media-amazon.com/images/M/MV5BNGNhMDIzZTUtNTBlZi00MTRlLWFjM2ItYzViMjE3YzI5MjljXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg",
    ),
    Movie(
      id: 9,
      name: "The Lord of the Rings: The Fellowship of the Ring",
      imdbRating: 8.8,
      director: "Peter Jackson",
      genre: "Action, Adventure, Drama",
      year: 2001,
      story:
          "A meek Hobbit from the Shire and eight companions set out on a journey to destroy the powerful One Ring and save Middle-earth from the Dark Lord Sauron.",
      imageUrl:
          "https://m.media-amazon.com/images/M/MV5BN2EyZjM3NzUtNWUzMi00MTgxLWI0NTctMzY4M2VlOTdjZWRiXkEyXkFqcGdeQXVyNDUzOTQ5MjY@._V1_.jpg",
    ),
    Movie(
      id: 10,
      name: "The Good, the Bad and the Ugly",
      imdbRating: 8.8,
      director: "Sergio Leone",
      genre: "Western",
      year: 1966,
      story:
          "A bounty hunting scam joins two men in an uneasy alliance against a third in a race to find a fortune in gold buried in a remote cemetery.",
      imageUrl:
          "https://m.media-amazon.com/images/M/MV5BNjJlYmNkZGItM2NhYy00MjlmLTk5NmQtNjg1NmM2ODU4OTMwXkEyXkFqcGdeQXVyMjUzOTY1NTc@._V1_.jpg",
    ),
    Movie(
      id: 11,
      name: "Forrest Gump",
      imdbRating: 8.8,
      director: "Robert Zemeckis",
      genre: "Drama, Romance",
      year: 1994,
      story:
          "The presidencies of Kennedy and Johnson, the Vietnam War, the Watergate scandal and other historical events unfold from the perspective of an Alabama man with an IQ of 75, whose only desire is to be reunited with his childhood sweetheart.",
      imageUrl:
          "https://m.media-amazon.com/images/M/MV5BNWIwODRlZTUtY2U3ZS00Yzg1LWJhNzYtMmZiYmEyNmU1NjMzXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg",
    ),
    Movie(
      id: 12,
      name: "Fight Club",
      imdbRating: 8.8,
      director: "David Fincher",
      genre: "Drama",
      year: 1999,
      story:
          "An insomniac office worker and a devil-may-care soapmaker form an underground fight club that evolves into something much, much more.",
      imageUrl:
          "https://m.media-amazon.com/images/M/MV5BMmEzNTkxYjQtZTc0MC00YTVjLTg5ZTEtZWMwOWVlYzY0NWIwXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg",
    ),
    Movie(
      id: 13,
      name: "Inception",
      imdbRating: 8.8,
      director: "Christopher Nolan",
      genre: "Action, Adventure, Sci-Fi",
      year: 2010,
      story:
          "A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O.",
      imageUrl:
          "https://m.media-amazon.com/images/M/MV5BMjAxMzY3NjcxNF5BMl5BanBnXkFtZTcwNTI5OTM0Mw@@._V1_.jpg",
    ),
    Movie(
      id: 14,
      name: "The Lord of the Rings: The Two Towers",
      imdbRating: 8.7,
      director: "Peter Jackson",
      genre: "Action, Adventure, Drama",
      year: 2002,
      story:
          "While Frodo and Sam edge closer to Mordor with the help of the shifty Gollum, the divided fellowship makes a stand against Sauron's new ally, Saruman, and his hordes of Isengard.",
      imageUrl:
          "https://m.media-amazon.com/images/M/MV5BZGMxZTdjZmYtMmE2Ni00ZTdkLWI5NTgtNjlmMjBiNzU2MmI5XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_.jpg",
    ),
    Movie(
      id: 15,
      name: "Star Wars: Episode V - The Empire Strikes Back",
      imdbRating: 8.7,
      director: "Irvin Kershner",
      genre: "Action, Adventure, Fantasy",
      year: 1980,
      story:
          "After the Rebels are brutally overpowered by the Empire on the ice planet Hoth, Luke Skywalker begins Jedi training with Yoda, while his friends are pursued by Darth Vader and a bounty hunter named Boba Fett all over the galaxy.",
      imageUrl:
          "https://m.media-amazon.com/images/M/MV5BYmU1NDRjNDgtMzhiMi00NjZmLTg5NGItZDNiZjU5NTU4OTE0XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg",
    ),
    Movie(
      id: 16,
      name: "The Matrix",
      imdbRating: 8.7,
      director: "Lana Wachowski, Lilly Wachowski",
      genre: "Action, Sci-Fi",
      year: 1999,
      story:
          "A computer hacker learns from mysterious rebels about the true nature of his reality and his role in the war against its controllers.",
      imageUrl:
          "https://m.media-amazon.com/images/M/MV5BNzQzOTk3OTAtNDQ0Zi00ZTVkLWI0MTEtMDllZjNkYzNjNTc4L2ltYWdlXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_.jpg",
    ),
    Movie(
      id: 17,
      name: "Goodfellas",
      imdbRating: 8.7,
      director: "Martin Scorsese",
      genre: "Biography, Crime, Drama",
      year: 1990,
      story:
          "The story of Henry Hill and his life in the mob, covering his relationship with his wife Karen Hill and his mob partners Jimmy Conway and Tommy DeVito in the Italian-American crime syndicate.",
      imageUrl:
          "https://m.media-amazon.com/images/M/MV5BY2NkZjEzMDgtN2RjYy00YzM1LWI4ZmQtMjIwYjFjNmI3ZGEwXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg",
    ),
    Movie(
      id: 18,
      name: "One Flew Over the Cuckoo's Nest",
      imdbRating: 8.7,
      director: "Milos Forman",
      genre: "Drama",
      year: 1975,
      story:
          "A criminal pleads insanity and is admitted to a mental institution, where he rebels against the oppressive nurse and rallies up the scared patients.",
      imageUrl:
          "https://m.media-amazon.com/images/M/MV5BZjA0OWVhOTAtYWQxNi00YzNhLWI4ZjYtNjFjZTEyYjJlNDVlL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg",
    ),
    Movie(
      id: 19,
      name: "Seven Samurai",
      imdbRating: 8.6,
      director: "Akira Kurosawa",
      genre: "Action, Adventure, Drama",
      year: 1954,
      story:
          "A poor village under attack by bandits recruits seven unemployed samurai to help them defend themselves.",
      imageUrl:
          "https://m.media-amazon.com/images/M/MV5BOWE4ZDdhNmMtNzE5ZC00NzExLTlhNGMtY2ZhYjYzODEzODA1XkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_.jpg",
    ),
    Movie(
      id: 20,
      name: "Se7en",
      imdbRating: 8.6,
      director: "David Fincher",
      genre: "Crime, Drama, Mystery",
      year: 1995,
      story:
          "Two detectives, a rookie and a veteran, hunt a serial killer who uses the seven deadly sins as his motives.",
      imageUrl:
          "https://m.media-amazon.com/images/M/MV5BOTUwODM5MTctZjczMi00OTk4LTg3NWUtNmVhMTAzNTNjYjcyXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_.jpg",
    ),
    Movie(
      id: 21,
      name: "The Silence of the Lambs",
      imdbRating: 8.6,
      director: "Jonathan Demme",
      genre: "Crime, Drama, Thriller",
      year: 1991,
      story:
          "A young F.B.I. cadet must receive the help of an incarcerated and manipulative cannibal killer to help catch another serial killer, a madman who skins his victims.",
      imageUrl:
          "https://m.media-amazon.com/images/M/MV5BNjNhZTk0ZmEtNjJhMi00YzFlLWE1MmEtYzM1M2ZmMGMwMTU4XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_.jpg",
    ),
    Movie(
      id: 22,
      name: "City of God",
      imdbRating: 8.6,
      director: "Fernando Meirelles, Kátia Lund",
      genre: "Crime, Drama",
      year: 2002,
      story:
          "In the slums of Rio, two kids' paths diverge as one struggles to become a photographer and the other a kingpin.",
      imageUrl:
          "https://m.media-amazon.com/images/M/MV5BOTMwYjc5ZmItYTFjZC00ZGQ3LTlkNTMtMjZiNTZlMWQzNzI5XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg",
    ),
    Movie(
      id: 23,
      name: "Life Is Beautiful",
      imdbRating: 8.6,
      director: "Roberto Benigni",
      genre: "Comedy, Drama, Romance",
      year: 1997,
      story:
          "When an open-minded Jewish librarian and his son become victims of the Holocaust, he uses a perfect mixture of will, humor, and imagination to protect his son from the dangers around their camp.",
      imageUrl:
          "https://m.media-amazon.com/images/M/MV5BYmJmM2Q4NmMtYThmNC00ZjRlLWEyZmItZTIwOTBlZDQ3NTQ1XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg",
    ),
    Movie(
      id: 24,
      name: "It's a Wonderful Life",
      imdbRating: 8.6,
      director: "Frank Capra",
      genre: "Drama, Family, Fantasy",
      year: 1946,
      story:
          "An angel is sent from Heaven to help a desperately frustrated businessman by showing him what life would have been like if he had never existed.",
      imageUrl:
          "https://m.media-amazon.com/images/M/MV5BZjc4NDZhZWMtNGEzYS00ZWU2LThlM2ItNTA0YzQ0OTExMTE2XkEyXkFqcGdeQXVyNjUwMzI2NzU@._V1_.jpg",
    ),
    Movie(
      id: 25,
      name: "Spirited Away",
      imdbRating: 8.6,
      director: "Hayao Miyazaki",
      genre: "Animation, Adventure, Family",
      year: 2001,
      story:
          "During her family's move to the suburbs, a sullen 10-year-old girl wanders into a world ruled by gods, witches, and spirits, and where humans are changed into beasts.",
      imageUrl:
          "https://m.media-amazon.com/images/M/MV5BMjlmZmI5MDctNDE2YS00YWE0LWE5ZWItZDBhYWQ0NTcxNWRhXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg",
    ),
    Movie(
      id: 26,
      name: "Saving Private Ryan",
      imdbRating: 8.6,
      director: "Steven Spielberg",
      genre: "Drama, War",
      year: 1998,
      story:
          "Following the Normandy Landings, a group of U.S. soldiers go behind enemy lines to retrieve a paratrooper whose brothers have been killed in action.",
      imageUrl:
          "https://m.media-amazon.com/images/M/MV5BZjhkMDM4MWItZTVjOC00ZDRhLThmYTAtM2I5NzBmNmNlMzI1XkEyXkFqcGdeQXVyNDYyMDk5MTU@._V1_.jpg",
    ),
    Movie(
      id: 27,
      name: "The Green Mile",
      imdbRating: 8.6,
      director: "Frank Darabont",
      genre: "Crime, Drama, Fantasy",
      year: 1999,
      story:
          "The lives of guards on Death Row are affected by one of their charges: a black man accused of child murder and rape, yet who has a mysterious gift.",
      imageUrl:
          "https://m.media-amazon.com/images/M/MV5BMTUxMzQyNjA5MF5BMl5BanBnXkFtZTYwOTU2NTY3._V1_.jpg",
    ),
    Movie(
      id: 28,
      name: "Interstellar",
      imdbRating: 8.6,
      director: "Christopher Nolan",
      genre: "Adventure, Drama, Sci-Fi",
      year: 2014,
      story:
          "A team of explorers travel through a wormhole in space in an attempt to ensure humanity's survival.",
      imageUrl:
          "https://m.media-amazon.com/images/M/MV5BZjdkOTU3MDktN2IxOS00OGEyLWFmMjktY2FiMmZkNWIyODZiXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg",
    ),
    Movie(
      id: 29,
      name: "Star Wars: Episode IV - A New Hope",
      imdbRating: 8.6,
      director: "George Lucas",
      genre: "Action, Adventure, Fantasy",
      year: 1977,
      story:
          "Luke Skywalker joins forces with a Jedi Knight, a cocky pilot, a Wookiee and two droids to save the galaxy from the Empire's world-destroying battle station, while also attempting to rescue Princess Leia from the mysterious Darth Vader.",
      imageUrl:
          "https://m.media-amazon.com/images/M/MV5BNzVlY2MwMjktM2E4OS00Y2Y3LWE3ZjctYzhkZGM3YzA1ZWM2XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg",
    ),
    Movie(
      id: 30,
      name: "Terminator 2: Judgment Day",
      imdbRating: 8.5,
      director: "James Cameron",
      genre: "Action, Sci-Fi",
      year: 1991,
      story:
          "A cyborg, identical to the one who failed to kill Sarah Connor, must now protect her teenage son, John Connor, from a more advanced and powerful cyborg.",
      imageUrl:
          "https://m.media-amazon.com/images/M/MV5BMGU2NzRmZjUtOGUxYS00ZjdjLWEwZWItY2NlM2JhNjkxNTFmXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_.jpg",
    ),
    Movie(
      id: 31,
      name: "Back to the Future",
      imdbRating: 8.5,
      director: "Robert Zemeckis",
      genre: "Adventure, Comedy, Sci-Fi",
      year: 1985,
      story:
          "Marty McFly, a 17-year-old high school student, is accidentally sent thirty years into the past in a time-traveling DeLorean invented by his close friend, the eccentric scientist Doc Brown.",
      imageUrl:
          "https://m.media-amazon.com/images/M/MV5BZmU0M2Y1OGUtZjIxNi00ZjBkLTg1MjgtOWIyNThiZWIwYjRiXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg",
    ),
    Movie(
      id: 32,
      name: "Psycho",
      imdbRating: 8.5,
      director: "Alfred Hitchcock",
      genre: "Horror, Mystery, Thriller",
      year: 1960,
      story:
          "A Phoenix secretary embezzles forty thousand dollars from her employer's client, goes on the run, and checks into a remote motel run by a young man under the domination of his mother.",
      imageUrl:
          "https://m.media-amazon.com/images/M/MV5BNTQwNDM1YzItNDAxZC00NWY2LTk0M2UtNDIwNWI5OGUyNWUxXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg",
    ),
    Movie(
      id: 33,
      name: "The Pianist",
      imdbRating: 8.5,
      director: "Roman Polanski",
      genre: "Biography, Drama, Music",
      year: 2002,
      story:
          "A Polish Jewish musician struggles to survive the destruction of the Warsaw ghetto of World War II.",
      imageUrl:
          "https://m.media-amazon.com/images/M/MV5BOWRiZDIxZjktMTA1NC00MD",
    ),
  ];
}
