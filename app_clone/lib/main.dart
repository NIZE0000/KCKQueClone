import 'package:app_clone/screens/auth/login.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

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
      ),
      debugShowCheckedModeBanner: false,
      home: const Login(),
    );
  }
}
