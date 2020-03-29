import 'package:flutter/material.dart';
import '../src/screens/LoginScreen.dart';

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new AppState();
  }
}

class AppState extends State<App> {
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Log me in!",
      home: Scaffold(
        appBar: AppBar(title: Text("Login")),
        body: SafeArea(child: LoginScreen()),
      ),
    );
  }
}
