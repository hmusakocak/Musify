import 'package:flutter/material.dart';

class genre_cont extends StatefulWidget {
  genre_cont({
    Key? key,
    @required this.name,
  }) : super(key: key);

  String? name;

  @override
  State<genre_cont> createState() => _genre_contState();
}

class _genre_contState extends State<genre_cont> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              '${widget.name}',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          width: 380,
          height: 280,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.black,
          ),
          margin: EdgeInsets.fromLTRB(15, 10, 15, 10),
        ),
      ),
    );
  }
}
