import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Info extends StatefulWidget {
  const Info({Key? key}) : super(key: key);

  @override
  State<Info> createState() => _InfoState();
}

class _InfoState extends State<Info> {
  final queues = FirebaseFirestore.instance.collection('queues');
  final auth = FirebaseAuth.instance;

  final String userId = FirebaseAuth.instance.currentUser!.uid.toString();
  DateTime date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: FirebaseFirestore.instance.collection('queues').snapshots(),
        builder: (context, _) {
          return Container(
            alignment: Alignment.topCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset('assets/images/f3.png', width: 200, height: 200),
                const SizedBox(height: 30),
                const Text(
                  'ข้อมูลการจอง',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const Text(
                  'กรุณาตรวจสอบวันที่ และช่วงเวลาก่อนการเดินทาง',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Container(
                  padding: const EdgeInsets.all(24),
                  child: SizedBox(
                    width: 1000.0,
                    child: ElevatedButton(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.add, size: 20),
                          Text(
                            'เพิ่มข้อมูลการจอง',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return Dialog(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Container(
                                alignment: Alignment.center,
                                height: 500,
                                // width: 500,
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      AppBar(
                                        automaticallyImplyLeading: false,
                                        title: const Text(
                                          'เริ่มต้นการจอง',
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.normal),
                                        ),
                                        actions: <Widget>[
                                          TextButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: const [
                                                Text(
                                                  'ปิด',
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                Icon(
                                                  Icons.close,
                                                  size: 14,
                                                  color: Colors.white,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      DatePicker(
                                        DateTime.now(),
                                        height: 100,
                                        initialSelectedDate: DateTime.now(),
                                        selectionColor: Colors.black,
                                        selectedTextColor: Colors.white,
                                        onDateChange: (Date) {
                                          // New date selected
                                          setState(() {
                                            date = Date;
                                          });
                                        },
                                      ),
                                      Column(
                                        children: [
                                          Container(
                                            padding: const EdgeInsets.all(20),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                SingleChildScrollView(
                                                  child:
                                                      Column(children: const [
                                                    Text(
                                                      'ข้อควรทราบก่อนการจอง',
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    SizedBox(height: 10),
                                                    Text(
                                                      '• การจองเป็นไปตามข้อกำหนดเพื่อลดความแออัดของนักแสวงบุญบนยอดเขา ที่จำกัดจำนวนตามรอบที่ถูกกำหนดไว้จำนวนไม่เกิน 6,000 คนต่อช่วงเวลา',
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 12,
                                                          fontWeight: FontWeight
                                                              .normal),
                                                    ),
                                                    Text(
                                                      '• การเดินทางขึ้นเขาคิชฌกูฎเพื่อสักการะรอยพระพุทธบาท มี 2 ช่องทาง คือ 1.ใช้บริการคิวรถขึ้นเขาพระบาทคิชฌกูฎ 2.เดินเท้า',
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 12,
                                                          fontWeight: FontWeight
                                                              .normal),
                                                    ),
                                                    Text(
                                                      '• การใช้บริการคิวรถมีให้บริการตลอด 24 ชม. ใช้เวลานั่งรถประมาณ 15 นาที ส่วนการเดินขึ้นเขา สามารถเดินขึ้นได้ตลอดทั้งวัน ซึ่งใช้เวลาประมาณ 3- 6 ชม.',
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 12,
                                                          fontWeight: FontWeight
                                                              .normal),
                                                    ),
                                                    Text(
                                                      '• การจองสามารถจองได้วันละไม่เกิน 5 ใบจอง และแต่ละใบจองระบุผู้ติดตามได้ไม่เกินใบจองละ 50 คน โดยเลือกจุดใช้บริการ วันที่ต้องการเดินทาง และช่วงเวลาที่ท่านต้องการ',
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 12,
                                                          fontWeight: FontWeight
                                                              .normal),
                                                    ),
                                                    Text(
                                                      '• เมื่อการจองเสร็จสมบูรณ์ท่านจะได้หลักฐานการจองเป็น QR Code เพื่อแสดงต่อเจ้าหน้าที่ ที่จุดขึ้นรถ และกรุณามาตรงตามเวลาที่ท่านจองคิวไว้ (สามารถแสดง QR Code ผ่านทางโทรศัพท์มือถือได้)',
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 12,
                                                          fontWeight: FontWeight
                                                              .normal),
                                                    ),
                                                  ]),
                                                )
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                20, 0, 20, 20),
                                            child: SizedBox(
                                              // width: 500.0,
                                              child: ElevatedButton(
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: const [
                                                      Icon(Icons.check,
                                                          size: 20),
                                                      Text(
                                                        'ยอมรับเงื่อนไขและเริ่มต้น',
                                                        style: TextStyle(
                                                          fontSize: 16,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  onPressed: () async {
                                                    queues.add({
                                                      'date': date,
                                                      'userId': userId
                                                    });
                                                    Navigator.pop(context);
                                                  }),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
                ),
                FutureBuilder(
                    future: queues.where("userId", isEqualTo: userId).get(),
                    builder: (context, snapshot) {
                      if (!snapshot.hasData) {
                        return const Center(child: CircularProgressIndicator());
                      } else {
                        return Expanded(
                          child: ListView.builder(
                              itemCount: snapshot.data!.size.toInt(),
                              scrollDirection: Axis.vertical,
                              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                              itemBuilder: (BuildContext context, int index) {
                                final Timestamp date =
                                    snapshot.data!.docs[index].data()['date'];
                                final day = date.toDate().day.toString();
                                final month = date.toDate().month.toString();
                                final year = date.toDate().year.toString();

                                return Card(
                                  child: Container(
                                      height: 50,
                                      alignment: Alignment.center,
                                      child: Text(
                                          "จองวันที่ $day เดือน $month ปี $year")),
                                );
                              }),
                        );
                      }
                    })
              ],
            ),
          );
        });
  }
}
