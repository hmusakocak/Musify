import 'package:flutter/material.dart';
import 'classGenres.dart';
import 'genre_pages.dart';

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
