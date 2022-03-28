import 'package:flutter/material.dart';

class BluesTemplate extends StatelessWidget {
  const BluesTemplate({Key? key, @required this.groupname,this.data}) : super(key: key);

  final String? groupname,data;

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
              Container(
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      "groupinfos/$groupname/$groupname.png",
                      fit: BoxFit.fill,
                    )),
                height: 100,
                width: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.black,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      "groupinfos/$groupname/$groupname(2).png",
                      fit: BoxFit.fill,
                    )),
                height: 100,
                width: 130,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.black,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      "groupinfos/$groupname/$groupname(3).png",
                      fit: BoxFit.fill,
                    )),
                height: 100,
                width: 119,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.black,
                ),
              ),
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
              Container(
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      "groupinfos/$groupname/$groupname(4).png",
                      fit: BoxFit.fill,
                    )),
                height: 100,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.black,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 9.5),
                child: CircleAvatar(
                  backgroundImage:
                      AssetImage("groupinfos/$groupname/$groupname(6).png"),
                  minRadius: 45,
                  maxRadius: 45,
                ),
              ),
              Container(
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      "groupinfos/$groupname/$groupname(5).png",
                      fit: BoxFit.fill,
                    )),
                height: 100,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.black,
                ),
              ),
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
                    child: Expanded(
                        child: Text(data.toString(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 17,
                      ),
                    ))),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
