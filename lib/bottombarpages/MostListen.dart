
import 'package:flutter/material.dart';

class MostListen extends StatefulWidget {
  const MostListen({Key? key}) : super(key: key);

  @override
  State<MostListen> createState() => _MostListenState();
}

class _MostListenState extends State<MostListen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('En Çok Dinlenenler'),
        titleTextStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black, fontStyle: FontStyle.italic),
        elevation : 0,
      ),
    );
  }
}
