import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(children: [
        SizedBox(height: size.height / 20,),
        Container(
          alignment: Alignment.centerLeft,
          width: size.width / 0.5,
          child: IconButton(
            icon: Icon(Icons.arrow_back_ios), onPressed: () {}),
        ),
        SizedBox(height: size.height / 50,),
        Container(
          width: size.width / 1.1,
          child: Text(
            "Welcome",
            style: TextStyle(
              fontSize: 34,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        Container(
          width: size.width / 1.1,
          child: Text(
            "Sign In to Contiue!",
            style: TextStyle(
              color: Colors.grey[700],
              fontSize: 25,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        SizedBox(
          height: size.height / 10,
        ),

        Container(
          width: size.width,
          alignment: Alignment.center,
          child: field(size, "email", Icons.account_box, _email),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(vertical: 18.0),
          child: Container(
            width: size.width,
            alignment: Alignment.center,
            child: field(size, "password", Icons.lock, _password),
          ),
        ),
         SizedBox(
          height: size.height / 10,
        ),
        customButton(size),
      ],
      )
    );
  }

  Widget customButton(Size size) {
    return Container(
      height: size.height / 14,
      width: size.width / 1.2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.blue,
      ),
      alignment: Alignment.center,
      child: Text(
        "Login",
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  }

  Widget field(
      Size size, String hintText, IconData icon, TextEditingController cont) {
    return Container(
      height: size.height / 14,
      width: size.width / 1.1,
      child: TextField(
        controller: cont,
        decoration: InputDecoration(
          prefixIcon: Icon(icon),
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }


}
