import 'package:app_clone/screen/auth/register.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                color: Colors.amber,
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
                child: Column(
                  children: [
                    const Text("ระบบจองคิวขึ้นสักการะพระพุทธบาท",
                        style: TextStyle(fontSize: 16)),
                    const SizedBox(
                      height: 20,
                    ),
                    // TextField(),
                    SizedBox(
                      width: double.infinity,
                      height: 40,
                      child: ElevatedButton(
                          child: const Text("ยืนยันการเข้าสู่ระบบ",
                              style: TextStyle(fontSize: 18)),
                          onPressed: () {}),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
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
                    SizedBox(
                      height: 40,
                      child: ElevatedButton.icon(
                          label: const Text(""),
                          icon: const Icon(Icons.login),
                          onPressed: () {}),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
