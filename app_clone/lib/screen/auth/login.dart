import 'dart:html';

import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(title: const Text("LOGIN")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Image.asset("assets/images/logoonly.png"),
                ],
              ),
              SizedBox(
                width: screenWidth * 0.8,
                height: 50,
                child: ElevatedButton(
                    child: const Text("Login"), onPressed: () {}),
              )
            ],
          ),
        ));
  }
}
