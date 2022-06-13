import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:open_file/open_file.dart';

class AudioPlayer extends StatefulWidget {
  const AudioPlayer({Key? key}) : super(key: key);

  @override
  State<AudioPlayer> createState() => _AudioPlayer();
}

var result;


class _AudioPlayer extends State<AudioPlayer> {

  @override
  var audioname = 'Oynatılacak dosya seçilmedi.';

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () async {
                  result = await FilePicker.platform.pickFiles(
                      type: FileType.custom,
                      allowedExtensions:
                  [
                    'mp3',
                    'aac',
                    'wav'
                  ]);
                  if (result == null) {
                    return;
                  }

                  final file = result.files.first;

                  setState(() {
                      audioname = file.name.toString();
                  });

                  _openselected(file);
                },
                child: Text('Ses dosyası seçiniz.')),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.network(
                  'https://img.freepik.com/free-vector/headphone-orange-cartoon-icon-vector_484148-115.jpg?w=826',
                  width: 300,
                  height: 350,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Text(
                audioname.toString(),
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Color(0xffb71c1c),
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.purple,
                  padding: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 30,
                  )),
                onPressed: () {
                  setState(() {
                    audioname = 'Oynatılacak dosya seçilmedi.';
                  });
                },
                child: Text('Temizle',style: TextStyle(color: Color(0xff90a4ae)),)),


          ],
        ),
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Text('Audio Player'),
        titleTextStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.black,
            fontStyle: FontStyle.italic),
        elevation: 0,
      ),
    );
  }
}

void _openselected(PlatformFile file) {
  OpenFile.open(file.path!);
}

