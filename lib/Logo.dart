import 'package:application_1/models/creator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_glow/flutter_glow.dart';

class Mylogo extends StatefulWidget {
  const Mylogo({Key? key}) : super(key: key);

  @override
  State<Mylogo> createState() => _MylogoState();
}

class _MylogoState extends State<Mylogo> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Me(),
          ),
        );
      },
      child: GlowText(
        'Musify',
        style: TextStyle(
          fontFamily: 'BebasNeue',
          fontWeight: FontWeight.normal,
          fontSize: 30,
          color: Color(0xffDA44bb),
        ),
      ),
    );
  }
}
