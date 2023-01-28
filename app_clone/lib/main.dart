// ignore_for_file: prefer_const_constructors

import 'package:app_clone/user_state.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return FutureBuilder(
        future: _initialization,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return MaterialApp(
              theme: ThemeData(
                brightness: Brightness.dark,
              ),
              debugShowCheckedModeBanner: false,
              home: Scaffold(
                body: Center(
                  child: Center(
                    child: Text(
                      'An error has been occured',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ),
            );
          }
          // Home page init
          if (snapshot.connectionState == ConnectionState.done) {
            {
              // login page init
              return MaterialApp(
                title: 'KCKQueue',
                theme: ThemeData(
                  brightness: Brightness.light,
                  // primaryColor: Colors.lightBlue[800],
                  // fontFamily: 'Prompt',
                  textTheme: GoogleFonts.promptTextTheme(textTheme),
                ),
                debugShowCheckedModeBanner: false,
                home: UserState(),
              );
            }
          }
          return MaterialApp(
            theme: ThemeData(
              brightness: Brightness.dark,
            ),
            debugShowCheckedModeBanner: false,
            home: Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            ),
          );
        });
  }
}
