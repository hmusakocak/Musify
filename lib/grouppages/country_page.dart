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
                Container(
                  width: 130,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.black,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      "groupinfos/$groupname/$groupname.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
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
                    child: Expanded(
                        child: Text(
                      data1.toString(),
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.6),
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    )),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 5,
            ),
            Column(
              children: [
                Container(
                  width: 130,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.black,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      "groupinfos/$groupname/$groupname(2).png",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
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
                    child: Expanded(
                      child: Text(
                        data2.toString(),
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.6),
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
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
                Container(
                  width: 130,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.black,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      "groupinfos/$groupname/$groupname(3).png",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
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
                    child: Expanded(
                        child: Text(
                      data3.toString(),
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.6),
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    )),
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
