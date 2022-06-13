import 'package:flutter/material.dart';
import 'classGenres.dart';
import 'genre_pages.dart';

class variables {
  static var rock = 0;
  static var metal = 0;
  static var punk = 0;
  static var rap = 0;
  static var country = 0;
  static var blues = 0;
}

class MyRow extends StatelessWidget {
  MyRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [

              GestureDetector(
                  child: my_Genres().rock,
                  onTap: () {
                    variables.rock++;
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => GenrePage(
                          textname: my_Genres().rock.name,
                        ),
                      ),
                    );
                  }),
            ],
          ),
          Row(
            children: [
              GestureDetector(
                child: my_Genres().rap,
                onTap: () {
                  variables.rap++;
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => GenrePage(
                        textname: my_Genres().rap.name,
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
          Row(
            children: [
              GestureDetector(
                  child: my_Genres().country,
                  onTap: () {
                    variables.country++;
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => GenrePage(
                          textname: my_Genres().country.name,
                        ),
                      ),
                    );
                  }),
            ],
          ),
          Row(
            children: [
              GestureDetector(
                  child: my_Genres().blues,
                  onTap: () {
                    variables.blues++;
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => GenrePage(
                          textname: my_Genres().blues.name,
                        ),
                      ),
                    );
                  }),
            ],
          ),
          Row(
            children: [
              GestureDetector(
                  child: my_Genres().punk,
                  onTap: () {
                    variables.punk++;
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => GenrePage(
                          textname: my_Genres().punk.name,
                        ),
                      ),
                    );
                  }),
            ],
          ),
          Row(
            children: [
              GestureDetector(
                  child: my_Genres().metal,
                  onTap: () {
                    variables.metal++;
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => GenrePage(
                          textname: my_Genres().metal.name,
                        ),
                      ),
                    );
                  }),
            ],
          )
        ],
      ),
    );
  }
}
