import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(backgroundColor: Colors.white,
        appBar: AppBar(backgroundColor: Colors.white,elevation: 0,automaticallyImplyLeading: false,leading: IconButton(onPressed:(){Navigator.pop(context);},icon:Icon(Icons.arrow_back_ios,color: Colors.black,)), ),
        body: Column(
          children: [
            Text('Şifrenizi sıfırlamak için mail adresinizi yazınız.'),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 48.0),
              child: TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(
                    left: 10,
                  ),
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xffDA44bb),
                        style: BorderStyle.solid,
                      ),
                      borderRadius: BorderRadius.circular(15)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xffDA44bb),
                        style: BorderStyle.solid,
                      ),
                      borderRadius: BorderRadius.circular(15)),
                  labelStyle: TextStyle(
                    color: Color(0xffDA44bb),
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.auto,
                  filled: true,
                ),
              ),

            ),
            ElevatedButton(onPressed: ()async{
              await FirebaseAuth.instance.sendPasswordResetEmail(email: _emailController.text.trim());

              Navigator.pop(context);
            }, child: Text('Gönder'))
          ],
        ),
      ),
    );
  }
}
