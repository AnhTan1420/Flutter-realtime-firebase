import 'package:flutter/material.dart';
import 'package:chat_app/Methods.dart';

class HomeScreen extends StatefulWidget {
  @override
  Widget build (BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen")
      ),
      body: Center(
        child: TextButton(
          onPressed: () => logOut(),
          child: Text("LogOut"),
        ),
      ),
    );
  }
}
