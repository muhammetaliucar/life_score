import 'package:flutter/material.dart';
import 'homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.lightBlue,
          scaffoldBackgroundColor: Colors.lightBlue[300]),
      home: Scaffold(
        appBar: AppBar(
          title: Text("LIFE SCORE"),
          centerTitle: true,
        ),
        body: HomePage(),
      ),
    );
  }
}
