

import 'package:application_1/bottombarpages/LikedPage.dart';
import 'package:application_1/bottombarpages/MostListen.dart';
import 'package:application_1/bottombarpages/SearchHistoryPage.dart';
import 'package:application_1/bottombarpages/home_page.dart';
import 'package:flutter/material.dart';

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
  MostListen()

];



class _NavigatedMainPageState extends State<NavigatedMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: sayfalar[index],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Anasayfa'),
          BottomNavigationBarItem(icon: Icon(Icons.thumb_up), label: 'Beğenilenler'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Arama Geçmişi'),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'En Çok Dinlenenler')
        ],
        selectedFontSize: 15,
        backgroundColor: Colors.white70,
        showUnselectedLabels: false,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        currentIndex: index,
        onTap: (value) {
          setState(() {
          index = value;
        });},

      ),
    );
  }
}
