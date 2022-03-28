
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
    return Container(
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
                    Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              image: AssetImage("groupinfos/$groupname/$groupname(5).png"))),
                    ),
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
                    Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              image: AssetImage("groupinfos/$groupname/$groupname(4).png"))),
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
                    Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              image: AssetImage("groupinfos/$groupname/$groupname(3).png"))),
                    ),
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
                    Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              image: AssetImage("groupinfos/$groupname/$groupname(2).png"))),
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
                    Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              image: AssetImage("groupinfos/$groupname/$groupname.png"))),
                    ),
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
    );
  }
}
