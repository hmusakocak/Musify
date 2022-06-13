import 'package:flutter/material.dart';

class Me extends StatelessWidget {
  const Me({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
           backgroundColor: Colors.grey,
          appBar: AppBar(
            backgroundColor: Colors.grey,
            elevation: 0,
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios, color: Colors.black),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          body: Center(
            child: Container(
              height: 500,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.black.withOpacity(0.1),
              ),
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundImage:
                        AssetImage("assets/images/creatoravatar.png"),
                    minRadius: 70,
                    maxRadius: 70,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20,),
                    child: Text("HASAN MUSA KOÇAK",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30,),
                    child: Text("Selçuk Üniversitesi",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 2,),
                    child: Text("Bilgisayar Mühendisliği",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:30,),
                    child: Text("'Bu uygulama HMK tarafından",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold,color: Colors.brown),),
                  ),
                  Text("geliştirilmektedir.'",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold,color: Colors.brown),),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
