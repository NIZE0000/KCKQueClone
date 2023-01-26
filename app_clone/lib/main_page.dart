import 'package:app_clone/screens/about.dart';
import 'package:app_clone/screens/contact.dart';
import 'package:app_clone/screens/home.dart';
import 'package:app_clone/screens/info.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  final auth = FirebaseAuth.instance;

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  final List<Widget> _screen = [
    Home(),
    Info(),
    Contact(),
    About(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
        elevation: 0,
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            const SizedBox(
              height: 8,
            ),
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
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.calendar_month,
              ),
              title: const Text('ข้อมูลการจอง'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
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
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.code,
              ),
              title: const Text('เกี่ยวกับแอปพลิเคชัน'),
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
              height: 16,
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
              height: 16,
            ),
            Image.network(
              'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif',
              alignment: Alignment.center,
              width: 150,
              height: 150,
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
