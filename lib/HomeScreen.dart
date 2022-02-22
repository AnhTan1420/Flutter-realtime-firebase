import 'package:flutter/material.dart';
import 'package:chat_app/Authenticate/Methods.dart';


class HomeScreen extends StatefulWidget {
  @override
  Widget build (BuildContext context) {
    return Scaffold(
      body: TextButton(
        onPressed: () => logOut(),
        child: Text("LogOut"),
      )
    )
  }
}
