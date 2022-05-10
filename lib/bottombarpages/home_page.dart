
import 'package:application_1/pagesaboutgenres/genre_container.dart';
import 'package:application_1/pagesaboutgenres/row_containers.dart';
import 'package:application_1/Logo.dart';
import 'package:flutter/material.dart';
import '../classGenres.dart';
import '../pagesaboutgenres/genre_pages.dart';

extension StringExtension on String {
  String firstletterupper() {
    return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
  }
}

class MyhomePage extends StatefulWidget {
  const MyhomePage({Key? key}) : super(key: key);

  @override
  _MyhomePageState createState() => _MyhomePageState();
}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}

 Widget ad = Mylogo();

var aramabutonu = Icon(Icons.search);

var _controller = TextEditingController();

var temp = ad;

var mybodycont = Container(
  child: MyRow(),
);

class _MyhomePageState extends State<MyhomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          actions: [
            IconButton(
              color: Color(0xffDA44bb),
              icon: aramabutonu,
              onPressed: () {
                setState(() {
                  if (aramabutonu.icon == Icons.search) {
                    temp = SizedBox(
                      height: 40,
                      width: 450,
                      child: TextField(
                        controller: _controller,
                        onChanged: (_) {
                          setState(() {
                            if (_controller.text == '') {
                              mybodycont = Container(child: MyRow());
                            }
                          });
                        },
                        onSubmitted: (_) {
                          setState(
                            () {
                              for (int ct = 0; ct < 6; ct++) {
                                if (my_Genres()
                                        .my_genre_list
                                        .elementAt(ct)
                                        .name ==
                                    _controller.text
                                        .firstletterupper()
                                        .trim()) {
                                  mybodycont = Container(
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => GenrePage(
                                              textname: _controller.text
                                                  .trim()
                                                  .firstletterupper(),
                                            ),
                                          ),
                                        );
                                      },
                                      child: genre_cont(
                                        name:
                                            _controller.text.firstletterupper(),
                                      ),
                                    ),
                                  );
                                  break;
                                } else {
                                  mybodycont = Container(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Sonuç bulunamadı.',
                                        style: TextStyle(
                                          color: Colors.red,
                                          fontWeight: FontWeight.w800,
                                          fontSize: 25,
                                        ),
                                      ),
                                    ),
                                  );
                                }
                              }
                            },
                          );
                        },
                        autocorrect: false,
                        autofocus: true,
                        cursorColor: Colors.black,
                        cursorWidth: 2,
                        style: TextStyle(
                          color: Colors.blueGrey[400],
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(
                            left: 10,
                          ),
                          icon: ad,
                          fillColor: Colors.white,
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xffDA44bb),
                                style: BorderStyle.solid,
                              ),
                              borderRadius: BorderRadius.circular(15)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xffDA44bb),
                                style: BorderStyle.solid,
                              ),
                              borderRadius: BorderRadius.circular(15)),
                          labelText: 'Müzik türü yazınız.',
                          labelStyle: TextStyle(
                            color: Color(0xffDA44bb),
                          ),
                          floatingLabelBehavior: FloatingLabelBehavior.auto,
                          filled: true,
                        ),
                      ),
                    );
                    aramabutonu = Icon(Icons.cancel);
                  } else {
                    temp = ad;
                    mybodycont = Container(child: MyRow());
                    _controller.text = '';
                    aramabutonu = Icon(Icons.search);
                  }
                });
              },
            ),
          ],
          elevation: 0,
          centerTitle: false,
          title: temp,
        ),
        body: ScrollConfiguration(
          behavior: MyBehavior(),
          child: SingleChildScrollView(
            child: GestureDetector(
              child: mybodycont,
            ),
          ),
        ),
      ),
    );
  }
}
