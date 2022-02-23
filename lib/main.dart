import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'Authenticate/loginScreen.dart';

Flutter main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();

  runApp(MyApp());

}


class MyApp extends StatelessWidget{
  @override
  Widget build (BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}