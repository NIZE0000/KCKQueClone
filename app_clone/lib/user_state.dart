import 'package:app_clone/screens/auth/login.dart';
import 'package:app_clone/screens/home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class UserState extends StatelessWidget {
  const UserState({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, userSnapshot) {
          if (userSnapshot.data == null) {
            return Login();
          } else if (userSnapshot.hasData) {
            // print('user is already signed in');
            return Home();
          } else if (userSnapshot.hasError) {
            return const Scaffold(
              body: Center(
                child: Text('An error has been occured'),
              ),
            );
          } else if (userSnapshot.connectionState == ConnectionState.waiting) {
            return const Scaffold(
                body: Center(
              child: CircularProgressIndicator(),
            ));
          }
          return const Scaffold(
            body: Center(
              child: Text('Something went wrong '),
            ),
          );
        });
  }
}
