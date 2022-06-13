import 'package:application_1/chartpage.dart';
import 'package:application_1/pagesaboutgenres/genre_container.dart';
import 'package:flutter/material.dart';
import 'package:application_1/pagesaboutgenres/row_containers.dart';

class SearchHistory extends StatefulWidget {
  const SearchHistory({Key? key}) : super(key: key);

  @override
  State<SearchHistory> createState() => _SearchHistoryState();
}

class _SearchHistoryState extends State<SearchHistory> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: Text('ZİYARET EDİLENLER'),
          backgroundColor: Colors.white,
          titleTextStyle: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
          elevation: 0,
        ),
        body: Center(
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    child: genre_cont(name: 'Rock'),
                    height: 65,
                    width: 150,
                  ),
                  Text(
                    'Türünün ziyaret edilme sayısı : ' +
                        variables.rock.toString(),
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.red),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    child: genre_cont(name: 'Metal'),
                    height: 65,
                    width: 150,
                  ),
                  Text(
                    'Türünün ziyaret edilme sayısı : ' +
                        variables.metal.toString(),
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.red),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    child: genre_cont(name: 'Punk'),
                    height: 65,
                    width: 150,
                  ),
                  Text(
                    'Türünün ziyaret edilme sayısı : ' +
                        variables.punk.toString(),
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.red),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    child: genre_cont(name: 'Rap'),
                    height: 65,
                    width: 150,
                  ),
                  Text(
                    'Türünün ziyaret edilme sayısı : ' +
                        variables.rap.toString(),
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.red),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    child: genre_cont(name: 'Country'),
                    height: 65,
                    width: 150,
                  ),
                  Text(
                    'Türünün ziyaret edilme sayısı : ' +
                        variables.country.toString(),
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.red),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    child: genre_cont(name: 'Blues'),
                    height: 65,
                    width: 150,
                  ),
                  Text(
                    'Türünün ziyaret edilme sayısı : ' +
                        variables.blues.toString(),
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.red),
                  ),
                ],
              ),
              Row(
                children: [
                  GestureDetector(
                    onDoubleTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MypiePage(),
                        ),
                      );

                    },
                    child: Container(
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Column(
                            children: [
                              Padding(
                                child: Text(
                                  'İSTATİSTİKLERE GİTMEK İÇİN ',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w900,
                                    fontSize: 16,
                                  ),
                                ),
                                padding: const EdgeInsets.all(10.0),
                              ),
                              Padding(
                                child: Text(
                                  'ÇİFT TIKLAYINIZ.',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w900,
                                    fontSize: 16,
                                  ),
                                ),
                                padding: const EdgeInsets.all(10.0),
                              ),
                            ],
                          ),
                        ),
                      ),
                      width: 380,
                      height: 136,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.black,
                      ),
                      margin: EdgeInsets.fromLTRB(15, 10, 15, 10),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
