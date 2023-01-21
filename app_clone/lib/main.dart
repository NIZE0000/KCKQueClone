import 'package:app_clone/screen/auth/login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KCKQueue',
      theme: ThemeData(
        // Define the default brightness and colors.
        brightness: Brightness.dark,

        // You can add the color from the seprate class here as well to maintain it well.
        primaryColor: Colors.lightBlue[800],

        // Define the default font family.
        fontFamily: 'Prompt',

        // Define the default `TextTheme`. Use this to specify the default
        // text styling for headlines, titles, bodies of text, and more.
        textTheme: const TextTheme(
          headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const Login(),
    );
  }
}
