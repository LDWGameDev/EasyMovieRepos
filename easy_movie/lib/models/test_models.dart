
class Genre
{
  String id;

  Genre(this.id);
}

List<Genre> genres = [
  Genre("All"),
  Genre("Action"),
  Genre("Drama"),
  Genre("Horor"),
];


class Movie
{
  String name;
  String imagePath;

  Movie(this.name, this.imagePath);
}

List<Movie> movies = [
  Movie("How to train you dragon 3", "assets/images/how_to_train_your_dragon_3.png"), 
  Movie("Onward", "assets/images/on_ward.png"), 
  Movie("Ralph", "assets/images/ralph.png"), 
];