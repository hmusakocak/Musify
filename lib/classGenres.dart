import 'pagesaboutgenres/genre_container.dart';

class my_Genres {
  genre_cont rock = genre_cont(name: 'Rock');
  genre_cont rap = genre_cont(name: 'Rap');
  genre_cont blues = genre_cont(name: 'Blues');
  genre_cont country = genre_cont(name: 'Country');
  genre_cont punk = genre_cont(name: 'Punk');
  genre_cont metal = genre_cont(name: 'Metal');

  List my_genre_list = [];

  my_Genres() {
    my_genre_list = [rock, rap, blues, country, punk, metal];
  }
}
