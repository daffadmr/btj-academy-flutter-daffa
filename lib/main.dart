import 'package:flutter/material.dart';
import 'package:flutter_application_test/detail.dart';

void main() => runApp(const MaterialApp(
      title: "App",
      home: MyApp(),
    ));

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: Image.asset('assets/images/bakti-logo.png', height: 30),
          backgroundColor: Colors.transparent,
        ),
        body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Container(
              padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
              child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Detail()),
                    );
                  },
                  child: Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white, //add it here
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("LARIKE",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
                              Text('MLU0016', style: TextStyle(fontSize: 12),)
                            ],
                          ),
                          Text('14230 Km',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 12))
                        ],
                      )))),
          Container(
              padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
              child: Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white, //add it here
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("TABUAH",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
                          Text(
                            'KLB00615', style: TextStyle(fontSize: 12)
                          )
                        ],
                      ),
                      Text('12188 Km',
                          style: TextStyle(color: Colors.grey, fontSize: 12))
                    ],
                  )))
        ]));
  }
}
