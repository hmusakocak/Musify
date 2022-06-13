
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}

class RockTemplate extends StatelessWidget {
  RockTemplate({Key? key, @required this.groupname,this.data1,this.data2,this.data3,this.data4,this.data5}) : super(key: key);



  final String? groupname;

  final String? data1,data2,data3,data4,data5;



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/rockbg.png")),
          color: Colors.white,
           ),
        width: double.infinity,
        height: double.infinity,
        child: ScrollConfiguration(
          behavior: MyBehavior(),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.deepOrange.withOpacity(0.8),Colors.yellow.withOpacity(0.8)]),borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    children: [
                      FutureBuilder(
                          future: FirebaseStorage.instance
                              .ref("groupinfos/$groupname/$groupname(5).png")
                              .getDownloadURL(),
                          builder:
                              (BuildContext context, AsyncSnapshot<String> snapshot) {
                            if (!snapshot.hasData ||
                                snapshot.connectionState == ConnectionState.waiting) {
                              return CircularProgressIndicator();
                            }
                            if (snapshot.connectionState == ConnectionState.done &&
                                snapshot.hasData) {
                              return Container(
                                width: 150,
                                height: 150,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: DecorationImage(
                                        image: NetworkImage(snapshot.data!))),
                              );
                            }
                            return Container();
                          }),

                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text(data1.toString(),

                            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w800,fontSize: 15),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.deepOrange.withOpacity(0.8),Colors.yellow.withOpacity(0.8)]),borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(data2.toString(),
                            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w800,fontSize: 15),
                          ),
                        ),
                      ),
                      FutureBuilder(
                          future: FirebaseStorage.instance
                              .ref("groupinfos/$groupname/$groupname(4).png")
                              .getDownloadURL(),
                          builder:
                              (BuildContext context, AsyncSnapshot<String> snapshot) {
                            if (!snapshot.hasData ||
                                snapshot.connectionState == ConnectionState.waiting) {
                              return CircularProgressIndicator();
                            }
                            if (snapshot.connectionState == ConnectionState.done &&
                                snapshot.hasData) {
                              return Container(
                                width: 150,
                                height: 150,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: DecorationImage(
                                        image: NetworkImage(snapshot.data!))),
                              );
                            }
                            return Container();
                          }),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.deepOrange.withOpacity(0.8),Colors.yellow.withOpacity(0.8)]),borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    children: [
                      FutureBuilder(
                          future: FirebaseStorage.instance
                              .ref("groupinfos/$groupname/$groupname(3).png")
                              .getDownloadURL(),
                          builder:
                              (BuildContext context, AsyncSnapshot<String> snapshot) {
                            if (!snapshot.hasData ||
                                snapshot.connectionState == ConnectionState.waiting) {
                              return CircularProgressIndicator();
                            }
                            if (snapshot.connectionState == ConnectionState.done &&
                                snapshot.hasData) {
                              return Container(
                                width: 150,
                                height: 150,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: DecorationImage(
                                        image: NetworkImage(snapshot.data!))),
                              );
                            }
                            return Container();
                          }),
                      Expanded(

                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text(data3.toString(),

                            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w800,fontSize: 15),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.deepOrange.withOpacity(0.8),Colors.yellow.withOpacity(0.8)]),borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(data4.toString(),
                            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w800,fontSize: 15),
                          ),
                        ),
                      ),
                      FutureBuilder(
                          future: FirebaseStorage.instance
                              .ref("groupinfos/$groupname/$groupname(2).png")
                              .getDownloadURL(),
                          builder:
                              (BuildContext context, AsyncSnapshot<String> snapshot) {
                            if (!snapshot.hasData ||
                                snapshot.connectionState == ConnectionState.waiting) {
                              return CircularProgressIndicator();
                            }
                            if (snapshot.connectionState == ConnectionState.done &&
                                snapshot.hasData) {
                              return Container(
                                width: 150,
                                height: 150,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: DecorationImage(
                                        image: NetworkImage(snapshot.data!))),
                              );
                            }
                            return Container();
                          }),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.deepOrange.withOpacity(0.8),Colors.yellow.withOpacity(0.8)]),borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    children: [
                      FutureBuilder(
                          future: FirebaseStorage.instance
                              .ref("groupinfos/$groupname/$groupname.png")
                              .getDownloadURL(),
                          builder:
                              (BuildContext context, AsyncSnapshot<String> snapshot) {
                            if (!snapshot.hasData ||
                                snapshot.connectionState == ConnectionState.waiting) {
                              return CircularProgressIndicator();
                            }
                            if (snapshot.connectionState == ConnectionState.done &&
                                snapshot.hasData) {
                              return Container(
                                width: 150,
                                height: 150,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: DecorationImage(
                                        image: NetworkImage(snapshot.data!))),
                              );
                            }
                            return Container();
                          }),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text(data5.toString(),

                            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w800,fontSize: 15),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

            ]),
          ),
        )
      ),
    );
  }
}
