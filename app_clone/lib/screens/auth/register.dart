import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _loginFormKey = GlobalKey<FormState>();
  final bool _obscureText = true;
  String _email = "";
  String _password = "";
  String _confirmPassword = "";

  @override
  void initState() {
    super.initState();
  }

// login fuction when press the button
  void _submitFormOnLogin() async {
    final isValid = _loginFormKey.currentState!.validate();

    if (isValid && _confirmPassword == _password) {
      _loginFormKey.currentState!.save();
      try {
        await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: _email, password: _password);
        _loginFormKey.currentState!.reset();
      } on FirebaseAuthException catch (e) {
        print(e.message);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("สมัครใช้งานระบบ"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 200,
            width: double.infinity,
            color: Colors.lightBlueAccent,
            child: Stack(
              children: [
                Center(
                  child: Image.asset("assets/images/logoonly.png",
                      width: 150, height: 150),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
            child: Form(
              key: _loginFormKey,
              child: Column(
                children: [
                  const Text("ระบบจองคิวขึ้นสักการะพระพุทธบาท",
                      style: TextStyle(fontSize: 16)),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value!.isEmpty || !value.contains("@")) {
                        return "Please enter a valid Email adress";
                      } else {
                        return null;
                      }
                    },
                    onSaved: (email) {
                      _email = email.toString();
                    },
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email Address',
                      hintText: 'Enter Email Address',
                      // focusedBorder: OutlineInputBorder(
                      //     borderSide: BorderSide(color: Colors.red)),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    validator: (value) {
                      if (value!.isEmpty || value.length < 7) {
                        return "Please enter a valid password";
                      } else {
                        return null;
                      }
                    },
                    onSaved: (password) {
                      _password = password.toString();
                    },
                    obscureText: _obscureText,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      hintText: 'Enter Password',
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    validator: (value) {
                      if (value!.isEmpty || value.length < 7) {
                        return "Please enter a valid password";
                      } else {
                        return null;
                      }
                    },
                    onSaved: (confirmPassword) {
                      _confirmPassword = confirmPassword.toString();
                    },
                    obscureText: _obscureText,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Confirm Password',
                      hintText: 'Enter Password',
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 40,
                    child: ElevatedButton(
                        onPressed: _submitFormOnLogin,
                        child: const Text("ยืนยัันการสมัครบัญชีผู้ใช้",
                            style: TextStyle(fontSize: 18))),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
