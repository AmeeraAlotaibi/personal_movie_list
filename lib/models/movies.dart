class Movie {
  // constructor
  Movie(
      {required this.poster,
      required this.title,
      required this.year,
      required this.genre,
      required this.avgRating,
      required this.summary});
  // properties
  String poster;
  String title;
  int year;
  String genre;
  double avgRating;
  String summary;
}

List<Movie> movies = [
  Movie(
    poster: "assets/images/fresh.webp",
    title: "Fresh",
    year: 2022,
    genre: "Horror",
    avgRating: 7.5,
    summary:
        "FRESH follows Noa (Daisy Edgar-Jones), who meets the alluring Steve (Sebastian Stan) at a grocery store and - given her frustration with dating apps - takes a chance and gives him her number. After their first date, Noa is smitten and accepts Steve's invitation to a romantic weekend getaway. Only to find that her new paramour has been hiding some unusual appetites.",
  ),
  Movie(
    poster: "assets/images/coda.jpg",
    title: "Coda",
    year: 2021,
    genre: "Drama",
    avgRating: 8,
    summary:
        "As a CODA (Child of Deaf Adults) Ruby is the only hearing person in her deaf family. When the family's fishing business is threatened, Ruby finds herself torn between pursuing her passion at Berklee College of Music and her fear of abandoning her parents.",
  ),
  Movie(
    poster: "assets/images/lalaland.jpg",
    title: "La La Land",
    year: 2016,
    genre: "Musical",
    avgRating: 9,
    summary:
        "While navigating their careers in Los Angeles, a pianist and an actress fall in love while attempting to reconcile their aspirations for the future.",
  ),
  Movie(
    poster: "assets/images/the-grand-budapest-hotel.jpg",
    title: "The Grand Budapest Hotel",
    year: 2014,
    genre: "Drama",
    avgRating: 9.5,
    summary:
        "A writer encounters the owner of an aging high-class hotel, who tells him of his early years serving as a lobby boy in the hotel's glorious years under an exceptional concierge.",
  ),
  Movie(
    poster: "assets/images/the-book-thief.jpg",
    title: "The Book Thief",
    year: 2013,
    genre: "Drama",
    avgRating: 7.5,
    summary:
        "While subjected to the horrors of World War II Germany, young Liesel finds solace by stealing books and sharing them with others. In the basement of her home, a Jewish refugee is being protected by her adoptive parents.",
  ),
  Movie(
    poster: "assets/images/little-women.webp",
    title: "Little Women",
    year: 2019,
    genre: "Drama",
    avgRating: 8.5,
    summary:
        "Jo March reflects back and forth on her life, telling the beloved story of the March sisters - four young women, each determined to live life on her own terms.",
  ),
  Movie(
    poster: "assets/images/cruella.jpg",
    title: "Cruella",
    year: 2021,
    genre: "Comedy",
    avgRating: 7,
    summary:
        "Before she becomes Cruella de Vil, teenage Estella has a dream. She wishes to become a fashion designer, having been gifted with talent, innovation, and ambition all in equal measures. But life seems intent on making sure her dreams never come true.",
  ),
  Movie(
    poster: "assets/images/dune.jpg",
    title: "Dune",
    year: 2021,
    genre: "Sci-fi",
    avgRating: 9,
    summary:
        "A noble family becomes embroiled in a war for control over the galaxy's most valuable asset while its heir becomes troubled by visions of a dark future.",
  ),
  Movie(
    poster: "assets/images/jojorabbit.jpg",
    title: "Jojo Rabbit",
    year: 2019,
    genre: "Comedy",
    avgRating: 8.5,
    summary:
        "A young German boy in the Hitler Youth whose hero and imaginary friend is the country's dictator is shocked to discover that his mother is hiding a Jewish girl in their home.",
  ),
];
