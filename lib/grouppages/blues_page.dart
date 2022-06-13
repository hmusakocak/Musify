import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

class BluesTemplate extends StatelessWidget {
  const BluesTemplate({Key? key, @required this.groupname, this.data})
      : super(key: key);

  final String? groupname, data;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient:
            LinearGradient(colors: [Color(0xff0B486B), Color(0xffF56217)]),
      ),
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 1,
              ),
              FutureBuilder(
                  future: FirebaseStorage.instance
                      .ref("groupinfos/$groupname/$groupname.png")
                      .getDownloadURL(),
                  builder:
                      (BuildContext context, AsyncSnapshot<String> snapshot) {
                    if (!snapshot.hasData ||
                        snapshot.connectionState == ConnectionState.waiting) {
                      return CircularProgressIndicator();
                    } else if (snapshot.connectionState ==
                            ConnectionState.done &&
                        snapshot.hasData) {
                      return Container(
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.network(
                              snapshot.data!,
                              fit: BoxFit.fill,
                            )),
                        height: 100,
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.black,
                        ),
                      );
                    }
                    return Container();
                  }),
              SizedBox(
                width: 20,
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
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.network(
                              snapshot.data!,
                              fit: BoxFit.fill,
                            )),
                        height: 100,
                        width: 130,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.black,
                        ),
                      );
                    }
                    return Container();
                  }),
              SizedBox(
                width: 20,
              ),
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
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.network(
                              snapshot.data!,
                              fit: BoxFit.fill,
                            )),
                        height: 100,
                        width: 119,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.black,
                        ),
                      );
                    }
                    return Container();
                  }),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              SizedBox(
                width: 1,
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
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.network(
                              snapshot.data!,
                              fit: BoxFit.fill,
                            )),
                        height: 100,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.black,
                        ),
                      );
                    }
                    return Container();
                  }),
              FutureBuilder(
                  future: FirebaseStorage.instance
                      .ref("groupinfos/$groupname/$groupname(6).png")
                      .getDownloadURL(),
                  builder:
                      (BuildContext context, AsyncSnapshot<String> snapshot) {
                    if (!snapshot.hasData ||
                        snapshot.connectionState == ConnectionState.waiting) {
                      return CircularProgressIndicator();
                    }
                    if (snapshot.connectionState == ConnectionState.done &&
                        snapshot.hasData) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 9.5),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                            snapshot.data!,
                          ),
                          minRadius: 45,
                          maxRadius: 45,
                        ),
                      );
                    }
                    return Container();
                  }),
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
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.network(
                            snapshot.data!,
                            fit: BoxFit.fill,
                          ),
                        ),
                        height: 100,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.black,
                        ),
                      );
                    }
                    return Container();
                  }),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 35,
                  top: 20,
                ),
                child: Container(
                    width: 350,
                    child: Text(
                      data.toString(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 17,
                      ),
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
