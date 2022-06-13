import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

class CountryTemplate extends StatelessWidget {
  const CountryTemplate(
      {Key? key, @required this.groupname, this.data1, this.data2, this.data3})
      : super(key: key);

  final String? groupname, data1, data2, data3;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xff1e130c), Color(0xff9a8478)],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 5,
        ),
        child: Row(
          children: [
            SizedBox(
              width: 5,
            ),
            Column(
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
                          width: 130,
                          height: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.black,
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.network(
                              snapshot.data!,
                              fit: BoxFit.fill,
                            ),
                          ),
                        );
                      }
                      return Container();
                    }),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 5,
                  ),
                  child: Container(
                    width: 130,
                    height: 430,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.black.withOpacity(0.2),
                    ),
                    child: Text(
                      data1.toString(),
                      style: TextStyle(
                      color: Colors.white.withOpacity(0.6),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 5,
            ),
            Column(
              children: [
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
                          width: 130,
                          height: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.black,
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.network(
                              snapshot.data!,
                              fit: BoxFit.fill,
                            ),
                          ),
                        );
                      }
                      return Container();
                    }),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 5,
                  ),
                  child: Container(
                    width: 130,
                    height: 430,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.black.withOpacity(0.2),
                    ),
                    child: Text(
                      data2.toString(),
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.6),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 5,
            ),
            Column(
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
                          width: 130,
                          height: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.black,
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.network(
                              snapshot.data!,
                              fit: BoxFit.fill,
                            ),
                          ),
                        );
                      }
                      return Container();
                    }),

                Padding(
                  padding: const EdgeInsets.only(
                    top: 5,
                  ),
                  child: Container(
                    width: 130,
                    height: 430,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.black.withOpacity(0.2),
                    ),
                    child: Text(
                      data3.toString(),
                      style: TextStyle(
                      color: Colors.white.withOpacity(0.6),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
