import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.teal.withOpacity(0.3),
      appBar: AppBar(
        backgroundColor: Colors.black.withOpacity(0.1),
        centerTitle: true,
        title: Text("ListView Builder"),
      ),
      body: MyApp(),
    ),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<int> list = [];

  void initState() {
    for (int i = 0; i <= 50; i++) {
      list.add(i);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: list.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Container(
              width: 100,
              height: 100,
              child: Center(
                  child: Text(
                "Bangladesh",
                style: TextStyle(
                    backgroundColor: Colors.black,
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              )),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.yellowAccent,
                border: Border.all(color: Colors.black, width: 4),
              ),
            ),
            title: Text(
              "Iftikar Islam Atiq ${list[index]}",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
            subtitle: Text("Android Mobile Developer"),
            trailing: Icon(Icons.account_balance_wallet_rounded),
          );
        });
  }
}
