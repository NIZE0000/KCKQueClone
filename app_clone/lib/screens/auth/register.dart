import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _loginFormKey = GlobalKey<FormState>();
  bool _obscureText = true;

  @override
  void initState() {
    super.initState();
  }

  void _submitFormOnLogin() {
    final isValid = _loginFormKey.currentState!.validate();
    if (isValid) {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("สมัครสมาชิก"),
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
                      email;
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
