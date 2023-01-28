import 'package:flutter/material.dart';

class Contact extends StatefulWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          style: const TextStyle(color: Colors.white),
          controller: _searchController,
          decoration: const InputDecoration(
            hintStyle: TextStyle(color: Colors.white),
            hintText: "Search",
            prefixIcon: Icon(Icons.search, color: Colors.white),
            border: InputBorder.none,
          ),
        ),
      ),
      body: ListView(
        // Important: Remove any padding from the ListView.
        children: [
          const SizedBox(
            width: 20,
            height: 20,
          ),
          ListTile(
            leading: SizedBox(
              width: 70,
              height: 70,
              child: Image.asset(
                'assets/images/org8.png',
              ),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const <Widget>[
                Text("ศูนย์อำนวยการ งานประเพณีฯ"),
                Text("0842328159"),
                Text("อุทยานแห่งชาติเขาคิชฌกูฎ"),
              ],
            ),
            trailing: Container(
              padding: const EdgeInsets.all(20.0),
              child: const Icon(
                Icons.phone,
                color: Colors.lightBlue,
              ),
            ),
          ),
          const SizedBox(height: 10),
          ListTile(
            leading: SizedBox(
              width: 70,
              height: 70,
              child: Image.asset(
                'assets/images/org9.png',
              ),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const <Widget>[
                Text("คุณยงยุทธ (คิวรถเขาคชฌกูฎ)"),
                Text("0847011709"),
                Text("ประชาสัมพันธ์คิวรถเขาคิชฌกูฎ"),
              ],
            ),
            trailing: Container(
              padding: const EdgeInsets.all(20.0),
              child: const Icon(
                Icons.phone,
                color: Colors.lightBlue,
              ),
            ),
          ),
          const SizedBox(height: 10),
          ListTile(
            leading: SizedBox(
              width: 70,
              height: 70,
              child: Image.asset(
                'assets/images/org9.png',
              ),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const <Widget>[
                Text("คุณท็อป (คิวรถเขาคชฌกูฎ)"),
                Text("0830348835"),
                Text("ประชาสัมพันธ์คิวรถเขาคิชฌกูฎ"),
              ],
            ),
            trailing: Container(
              padding: const EdgeInsets.all(20.0),
              child: const Icon(
                Icons.phone,
                color: Colors.lightBlue,
              ),
            ),
          ),
          const SizedBox(height: 10),
          ListTile(
            leading: SizedBox(
              width: 70,
              height: 70,
              child: Image.asset(
                'assets/images/org9.png',
              ),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const <Widget>[
                Text("คุณทีม (คิวรถเขาคชฌกูฎ)"),
                Text("0988477718"),
                Text("ประชาสัมพันธ์คิวรถเขาคิชฌกูฎ"),
              ],
            ),
            trailing: Container(
              padding: const EdgeInsets.all(20.0),
              child: const Icon(
                Icons.phone,
                color: Colors.lightBlue,
              ),
            ),
          ),
          const SizedBox(height: 10),
          ListTile(
            leading: SizedBox(
              width: 70,
              height: 70,
              child: Image.asset(
                'assets/images/org9.png',
              ),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const <Widget>[
                Text("คุณสารพี (ผู้นำชุมชนบ้างแกลง)"),
                Text("0852793419"),
                Text("ผู้นำชุมชนบ้านแกลง"),
              ],
            ),
            trailing: Container(
              padding: const EdgeInsets.all(20.0),
              child: const Icon(
                Icons.phone,
                color: Colors.lightBlue,
              ),
            ),
          ),
          const SizedBox(height: 10),
          ListTile(
            leading: SizedBox(
              width: 70,
              height: 70,
              child: Image.asset(
                'assets/images/org9.png',
              ),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const <Widget>[
                Text("คุณยุ้ย (คิวรถวัดกระทิง)"),
                Text("0624957898"),
                Text("คิวรถวัดกระทิง"),
              ],
            ),
            trailing: Container(
              padding: const EdgeInsets.all(20.0),
              child: const Icon(
                Icons.phone,
                color: Colors.lightBlue,
              ),
            ),
          ),
          const SizedBox(height: 10),
          ListTile(
            leading: SizedBox(
              width: 70,
              height: 70,
              child: Image.asset(
                'assets/images/org7.png',
              ),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const <Widget>[
                Text("อาจารย์วิชาญ ทุมทอง"),
                Text("0838885883"),
                Text("ประสานงานข้อมูลภายในแอปพลิเคชัน"),
              ],
            ),
            trailing: Container(
              padding: const EdgeInsets.all(20.0),
              child: const Icon(
                Icons.phone,
                color: Colors.lightBlue,
              ),
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
