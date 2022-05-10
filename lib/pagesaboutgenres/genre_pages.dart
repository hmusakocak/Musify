
import 'routing_page.dart';
import 'package:flutter/material.dart';

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}

class GenrePage extends StatelessWidget {
  GenrePage({Key? key, @required this.textname}) : super(key: key);

  final String? textname;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
            backgroundColor: Colors.black,
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.black,

              leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ),
              ),
            ),
            body: ScrollConfiguration(
              behavior: MyBehavior(),
              child: Center(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    GestureDetector(
                      onDoubleTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Pages(pagename: '$textname',),
                          ),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: 20,
                        ),
                        decoration: BoxDecoration(
                            //Image Loading with textname variables
                            image: DecorationImage(
                              image:
                                  AssetImage('assets/images/$textname.png'),
                            ),
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(15)),
                        height: 450,
                        width: 373,
                      ),
                    ),
                    GestureDetector(
                      onDoubleTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Pages(pagename: '$textname(2)',),
                          ),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: 20,
                        ),
                        decoration: BoxDecoration(
                            //Image Loading with textname variable
                            image: DecorationImage(
                              image: AssetImage('assets/images/$textname(2).png'),
                            ),
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(15)),
                        height: 450,
                        width: 373,
                      ),
                    ),
                    GestureDetector(
                      onDoubleTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Pages(pagename: '$textname(3)',),
                          ),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: 20,
                        ),
                        decoration: BoxDecoration(
                            //Image Loading with textname variables
                            image: DecorationImage(
                              image:
                                  AssetImage('assets/images/$textname(3).png'),
                            ),
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(15)),
                        height: 450,
                        width: 373,
                      ),
                    ),
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
