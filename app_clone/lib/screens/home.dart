import 'package:app_clone/screens/auth/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final auth = FirebaseAuth.instance;

  int _current = 0;
  final List<String> imageList = [
    'assets/images/sl3new.png',
    'assets/images/org5.png',
    'assets/images/TA_2000x600_create.jpg',
    'assets/images/ADS.png',
    'assets/images/pim.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CarouselSlider(
          items: imageList.map((item) => Image.asset(item)).toList(),
          options: CarouselOptions(
            height: 200.0,
            aspectRatio: 16 / 9,
            viewportFraction: 0.8,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 3),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: imageList.map((url) {
            int index = imageList.indexOf(url);
            return Container(
              width: 8.0,
              height: 8.0,
              margin:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _current == index
                    ? const Color.fromRGBO(0, 0, 0, 0.9)
                    : const Color.fromRGBO(0, 0, 0, 0.4),
              ),
            );
          }).toList(),
        ),
        //const SizedBox(height: 20),
        Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Wrap(
              children: <Widget>[
                SizedBox(
                  width: 280,
                  height: 110,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Column(
                      children: const <Widget>[
                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Icon(Icons.calendar_month,
                              color: Colors.black, size: 40.0),
                        ),
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Text('ข้อมูลการจองคิว'),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 280,
                  height: 110,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Column(
                      children: const <Widget>[
                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child:
                              Icon(Icons.map, color: Colors.black, size: 40.0),
                        ),
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Text('แผนที่การเดินทาง'),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 280,
                  height: 110,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Column(
                      children: const <Widget>[
                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child:
                              Icon(Icons.call, color: Colors.black, size: 40.0),
                        ),
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Text('ติดต่อสอบถาม'),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 280,
                  height: 110,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Column(
                      children: const <Widget>[
                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child:
                              Icon(Icons.bed, color: Colors.black, size: 40.0),
                        ),
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Text('โรงแรมที่พัก'),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 280,
                  height: 110,
                  child: GestureDetector(
                    onTap: () {
                      auth.signOut().then((value) => Navigator.pushReplacement(
                              context, MaterialPageRoute(builder: (context) {
                            return const Login();
                          })));
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Column(
                        children: const <Widget>[
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Icon(Icons.lock_open,
                                color: Colors.black, size: 40.0),
                          ),
                          Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Text('ออกจากระบบ'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
