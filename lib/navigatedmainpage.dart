

import 'package:application_1/bottombarpages/LikedPage.dart';
import 'package:application_1/bottombarpages/AudioPlayPage.dart';
import 'package:application_1/bottombarpages/SearchHistoryPage.dart';
import 'package:application_1/bottombarpages/home_page.dart';
import 'package:application_1/pagesaboutgenres/row_containers.dart';
import 'package:flutter/material.dart';

import 'bottombarpages/txt_reader_writer.dart';

class NavigatedMainPage extends StatefulWidget {
  const NavigatedMainPage({Key? key}) : super(key: key);

  @override
  State<NavigatedMainPage> createState() => _NavigatedMainPageState();
}

var index = 0;

List sayfalar =
[
  MyhomePage(),
  LikedPage(),
  SearchHistory(),
  AudioPlayer(),
  txt_rw()
];



class _NavigatedMainPageState extends State<NavigatedMainPage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Sistem geri butonu aktif değil!')));

        return false;
      },
      child: Scaffold(
        body: sayfalar[index],
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Anasayfa'),
            BottomNavigationBarItem(icon: Icon(Icons.thumb_up), label: 'Beğenilenler'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Arama Geçmişi'),
            BottomNavigationBarItem(icon: Icon(Icons.audiotrack), label: 'Oynatıcı'),
            BottomNavigationBarItem(icon: Icon(Icons.draw), label: 'Düzenleyici')
          ],
          selectedFontSize: 15,
          backgroundColor: Colors.white70,
          showUnselectedLabels: false,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
          currentIndex: index,
          onTap: (value) {

            mybodycont = Container(child: MyRow(),);
            setState(() {
              index = value;
            });},

        ),
      ),
    );
  }
}
