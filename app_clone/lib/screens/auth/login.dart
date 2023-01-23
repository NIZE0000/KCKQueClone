import 'package:app_clone/screens/auth/register.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _loginFormKey = GlobalKey<FormState>();
  bool _obscureText = true;
  String _email = "";
  String _password = "";

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

// login fuction when press the button
  void _submitFormOnLogin() async {
    final isValid = _loginFormKey.currentState!.validate();

    if (isValid) {
      _loginFormKey.currentState!.save();
      try {
        await FirebaseAuth.instance
            .signInWithEmailAndPassword(email: _email, password: _password);
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
          title: const Text(
            "ล็อกอินเข้าสู่ระบบ",
            style: TextStyle(fontSize: 20),
          ),
        ),
        body: Center(
          child: Column(
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
                        decoration: InputDecoration(
                          suffixIcon: GestureDetector(
                            child: IconButton(
                              splashRadius: 15,
                              icon: Icon(
                                _obscureText
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                setState(() {
                                  _obscureText = !_obscureText;
                                });
                              },
                            ),
                          ),
                          border: const OutlineInputBorder(),
                          labelText: 'Password',
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
                            child: const Text("ยืนยันการเข้าสู่ระบบ",
                                style: TextStyle(fontSize: 18))),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("ยังไม่มีบัญชี?"),
                    SizedBox(
                      height: 40,
                      child: ElevatedButton(
                          child: const Text("สมัครใช้งาน",
                              style: TextStyle(fontSize: 16)),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const SignUp();
                            }));
                          }),
                    )
                  ],
                ),
              ),
              const Divider(),
              SizedBox(
                height: 40,
                child: ElevatedButton.icon(
                    label: const Text(""),
                    icon: Image.asset("assets/images/google_logo.png"),
                    onPressed: () {}),
              ),
              SignInButton(
                Buttons.Facebook,
                text: "",
                mini: true,
                onPressed: () {},
              ),
            ],
          ),
        ));
  }
}
