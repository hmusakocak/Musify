
import 'package:application_1/grouppages/creator.dart';
import 'package:application_1/login_register.dart';
import 'package:firebase_auth/firebase_auth.dart';
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
      onTap: (){

        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Me(
            ),
          ),
        );
      },
      onDoubleTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => LoginRegister(
            ),
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
