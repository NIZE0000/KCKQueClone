import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: Column(children: [
          Container(
            height: 150,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/org8.png',
                  width: 100,
                ),
                Image.asset(
                  'assets/images/org7.png',
                  width: 100,
                ),
              ],
            ),
          ),
          const Text(
            'แอปพลิเคชันจองคิวขึ้นเพื่อสักการะพระบาทเขาคิชณกูฎ ถูกพัฒนาขั้นภายใต้ความร่วมมือระหว่างอุทยานแห่งชาติเขาคิชกูฎกับคณะวิทยาการคอมพิวเตอร์และเทคโนโลยีสารสนเทศมหาวิทยาลัยราชภัฎรำไพพรรณี',
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'โดยมีคุณพีระ เรืองภัทดิ์ หัวหน้าคิวรถและตัวแทนคิวรถขึ้นเขาพระบาทเขาคิชณกูฎ เป็นผู้สนับสนุนงบประมาณเริ่มต้นโครงการ',
            textAlign: TextAlign.center,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              // ignore: prefer_const_literals_to_create_immutables
              Row(children: [
                const Text(
                  'ชื่อแอปพลิเคชัน',
                  textAlign: TextAlign.left,
                ),
                const Expanded(
                  child: Text(
                    'KCKQue',
                    style: TextStyle(color: Colors.blueAccent),
                    textAlign: TextAlign.right,
                  ),
                ),
              ]),
              const Divider(),
              // ignore: prefer_const_literals_to_create_immutables
              Row(children: [
                const Text(
                  'เวอร์ชัน',
                  textAlign: TextAlign.left,
                ),
                const Expanded(
                  child: Text(
                    '0.0.0',
                    style: TextStyle(color: Colors.blueAccent),
                    textAlign: TextAlign.right,
                  ),
                ),
              ]),
              const Divider(),
              // ignore: prefer_const_literals_to_create_immutables
              Row(children: [
                const Text(
                  'บัญชีผู้ใช้',
                  textAlign: TextAlign.left,
                ),
                const Expanded(
                  child: Text(
                    'ยกเลิกบัญชีผู้ใช้',
                    style: TextStyle(color: Colors.blueAccent),
                    textAlign: TextAlign.right,
                  ),
                ),
              ]),
            ]),
          )
        ]),
      ),
    ));
  }
}
