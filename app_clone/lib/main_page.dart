// ignore_for_file: unnecessary_const

import 'package:app_clone/screens/about.dart';
import 'package:app_clone/screens/contact.dart';
import 'package:app_clone/screens/home.dart';
import 'package:app_clone/screens/info.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  final auth = FirebaseAuth.instance;

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  final List<Widget> _screen = [
    const Home(),
    const Info(),
    const Contact(),
    const About(),
  ];

  final List<Widget> _appBar = [
    const Text('หน้าหลัก'),
    const Text('ข้อมูลการจอง'),
    const Text('ติดต่อสอบถาม'),
    const Text('เกี่ยวกับแอป'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _appBar[_currentIndex],
        elevation: 0,
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            SizedBox(
              height: 260.0,
              child: DrawerHeader(
                decoration: const BoxDecoration(color: Color.fromRGBO(149, 209, 255, 1),),
                child: Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/ezgif.com-gif-maker.gif'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/logo.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8,),
            Container(
              padding: const EdgeInsets.only(left: 16),
              child: const Text(
                'เมนูหลัก',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            ListTile(
              leading: const Icon(
                Icons.home,
              ),
              title: const Text('หน้าหลัก'),
              onTap: () {
                setState(() {
                  _currentIndex = 0;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.calendar_month,
              ),
              title: const Text('ข้อมูลการจอง'),
              onTap: () {
                setState(() {
                  _currentIndex = 1;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.map,
              ),
              title: const Text('แผนที่และการเดินทาง'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.phone,
              ),
              title: const Text('ติดต่อสอบถาม'),
              onTap: () {
                setState(() {
                  _currentIndex = 2;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.code,
              ),
              title: const Text('เกี่ยวกับแอปพลิเคชัน'),
              onTap: () {
                setState(() {
                  _currentIndex = 3;
                });
                Navigator.pop(context);
              },
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              padding: const EdgeInsets.only(left: 16),
              child: const Text(
                'ข้อมูลอื่น ๆ',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            ListTile(
              leading: const Icon(
                Icons.bed,
              ),
              title: const Text('โรงแรมที่พัก'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              padding: const EdgeInsets.only(left: 16),
              child: const Text(
                'ร่วมพัฒนาโดย',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            SizedBox(
            height: 90,
            child: Image.asset(
              'assets/images/combine_images.png',
              alignment: Alignment.center,
            ),
            ),
          ],
        ),
      ),
      body: _screen[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'หน้าหลัก',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: 'ข้อมูลการจอง',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.phone),
            label: 'ติดต่อสอบถาม',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.code),
            label: 'เกี่ยวกับแอป',
          ),
        ],
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
