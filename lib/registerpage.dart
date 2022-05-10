

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

class registerPage extends StatefulWidget {
  const registerPage({Key? key}) : super(key: key);

  @override
  State<registerPage> createState() => _registerPageState();
}

TextEditingController mail = TextEditingController();
TextEditingController sifre = TextEditingController();
TextEditingController sifretekrar = TextEditingController();

Widget ok = Container(
  child: Text('basarili'),
);
Widget empty = Container(
  child: Text(''),
);
Widget error = Container(
  child: Text('basarisiz'),
);

List<DropdownMenuItem<String>> get dropdownItems {
  List<DropdownMenuItem<String>> menuItems = [
    DropdownMenuItem(child: Text("@hotmail.com"), value: "@hotmail.com"),
    DropdownMenuItem(
        child: Text("@windowslive.com"), value: "@windowslive.com"),
    DropdownMenuItem(child: Text("@outlook.com"), value: "@outlook.com"),
    DropdownMenuItem(child: Text("@gmail.com"), value: "gmail.com"),
  ];
  return menuItems;
}

Widget mybottom = Container(
  child: Text(''),
);


String dropdownvalue = '@hotmail.com';
var items = [
  '@hotmail.com',
  '@outlook.com',
  '@gmail.com',
  '@windowslive.com',
];

class _registerPageState extends State<registerPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 85, top: 50),
                      child: Container(
                        width: 150,
                        child: TextField(
                          controller: mail,
                          decoration: InputDecoration(
                            labelText: 'E-posta',
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(
                              left: 10,
                            ),
                            fillColor: Colors.white,
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                  style: BorderStyle.solid,
                                ),
                                borderRadius: BorderRadius.circular(15)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                  style: BorderStyle.solid,
                                ),
                                borderRadius: BorderRadius.circular(15)),
                            labelStyle: TextStyle(
                              color: Color(0xffDA44bb),
                            ),
                            floatingLabelBehavior: FloatingLabelBehavior.auto,
                            filled: true,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50, left: 10),
                      child: DropdownButton(
                        // Initial Value
                        value: dropdownvalue,

                        // Down Arrow Icon
                        icon: const Icon(Icons.keyboard_arrow_down),

                        // Array list of items
                        items: items.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(items),
                          );
                        }).toList(),
                        // After selecting the desired option,it will
                        // change button value to selected value
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownvalue = newValue!;
                          });
                        },
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 0, top: 50),
                  child: Container(
                    width: 250,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 0, top: 20),
                  child: Container(
                    width: 250,
                    child: TextField(
                      controller: sifre,
                      decoration: InputDecoration(
                        labelText: 'Sifre',
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(
                          left: 10,
                        ),
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                              style: BorderStyle.solid,
                            ),
                            borderRadius: BorderRadius.circular(15)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                              style: BorderStyle.solid,
                            ),
                            borderRadius: BorderRadius.circular(15)),
                        labelStyle: TextStyle(
                          color: Color(0xffDA44bb),
                        ),
                        floatingLabelBehavior: FloatingLabelBehavior.auto,
                        filled: true,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 0, top: 50),
                  child: Container(
                    width: 250,
                    child: TextField(
                      controller: sifretekrar,
                      decoration: InputDecoration(
                        labelText: 'Sifre Tekrar',
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(
                          left: 10,
                        ),
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                              style: BorderStyle.solid,
                            ),
                            borderRadius: BorderRadius.circular(15)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                              style: BorderStyle.solid,
                            ),
                            borderRadius: BorderRadius.circular(15)),
                        labelStyle: TextStyle(
                          color: Color(0xffDA44bb),
                        ),
                        floatingLabelBehavior: FloatingLabelBehavior.auto,
                        filled: true,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15, left: 0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.purple,
                      padding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 50,
                      ),
                    ),
                    onPressed: () {

                      setState(() {


                        if (sifre.text == sifretekrar.text && sifre.text.length >= 6 &&sifretekrar.text.length >= 6 &&
                            mail.text.isNotEmpty == true &&

                            sifre.text.isNotEmpty == true) {
                          final eposta = mail.text + dropdownvalue.toString();
                          final pass = sifre.text;
                          olustur(eposta, pass);

                          kullaniciolustur(
                              mail: eposta,
                              sifre: pass);

                          mybottom = ok;
                        } else {
                          mybottom = error;
                        }
                      });
                    },
                    child: Text('Kayıt Ol'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5, left: 0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.purple,
                      padding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 50,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        mybottom = empty;
                      });
                      mail.text = '';
                      sifre.text = '';
                      sifretekrar.text = '';
                    },
                    child: Text('Temizle'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 0),
                  child: mybottom,
                ),
                Padding(
                  padding: EdgeInsets.only(top:5,left: 0),
                  child: Text('***sifre en az 6 karakter olmali***'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Future olustur (String adres, String pass) async
{
  await FirebaseAuth.instance.createUserWithEmailAndPassword(email: adres, password: pass);
}

Future kullaniciolustur(
    {required String mail,
    required String sifre}) async {
  final docUser = FirebaseFirestore.instance.collection('users').doc();


  final user = User(
    mail: mail,
    pass: sifre,
  );
  await docUser.set(user.toJson());
}

class User {

  final String pass;
  final String mail;

  User({

    required this.pass,
    required this.mail,
  });
  Map<String, dynamic> toJson() => {

        'pass': pass,
        'mail': mail,
      };
}






