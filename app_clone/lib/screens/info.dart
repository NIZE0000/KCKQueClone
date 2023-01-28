import 'package:flutter/material.dart';

class Info extends StatefulWidget {
  const Info({Key? key}) : super(key: key);

  @override
  _InfoState createState() => _InfoState();
}

class _InfoState extends State<Info> {
  @override
  Widget build(BuildContext context) {
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
                          width: 500,
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
                                      mainAxisAlignment: MainAxisAlignment.end,
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
                              Padding(
                                padding: const EdgeInsets.all(20),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                      alignment: Alignment.centerLeft,
                                      child: Column(
                                        children: const [
                                          Text(
                                            'ข้อควรทราบก่อนการจอง',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(height: 10),
                                          Text(
                                            '• การจองเป็นไปตามข้อกำหนดเพื่อลดความแออัดของนักแสวงบุญบนยอดเขา ที่จำกัดจำนวนตามรอบที่ถูกกำหนดไว้จำนวนไม่เกิน 6,000 คนต่อช่วงเวลา',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 12,
                                                fontWeight: FontWeight.normal),
                                          ),
                                          Text(
                                            '• การเดินทางขึ้นเขาคิชฌกูฎเพื่อสักการะรอยพระพุทธบาท มี 2 ช่องทาง คือ 1.ใช้บริการคิวรถขึ้นเขาพระบาทคิชฌกูฎ 2.เดินเท้า',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 12,
                                                fontWeight: FontWeight.normal),
                                          ),
                                          Text(
                                            '• การใช้บริการคิวรถมีให้บริการตลอด 24 ชม. ใช้เวลานั่งรถประมาณ 15 นาที ส่วนการเดินขึ้นเขา สามารถเดินขึ้นได้ตลอดทั้งวัน ซึ่งใช้เวลาประมาณ 3- 6 ชม.',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 12,
                                                fontWeight: FontWeight.normal),
                                          ),
                                          Text(
                                            '• การจองสามารถจองได้วันละไม่เกิน 5 ใบจอง และแต่ละใบจองระบุผู้ติดตามได้ไม่เกินใบจองละ 50 คน โดยเลือกจุดใช้บริการ วันที่ต้องการเดินทาง และช่วงเวลาที่ท่านต้องการ',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 12,
                                                fontWeight: FontWeight.normal),
                                          ),
                                          Text(
                                            '• เมื่อการจองเสร็จสมบูรณ์ท่านจะได้หลักฐานการจองเป็น QR Code เพื่อแสดงต่อเจ้าหน้าที่ ที่จุดขึ้นรถ และกรุณามาตรงตามเวลาที่ท่านจองคิวไว้ (สามารถแสดง QR Code ผ่านทางโทรศัพท์มือถือได้)',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 12,
                                                fontWeight: FontWeight.normal),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: 20),
                                    SizedBox(
                                      width: 500.0,
                                      child: ElevatedButton(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: const [
                                              Icon(Icons.check, size: 20),
                                              Text(
                                                'ยอมรับเงื่อนไขและเริ่มต้นการจอง',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                ),
                                              ),
                                            ],
                                          ),
                                          onPressed: () {}),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
