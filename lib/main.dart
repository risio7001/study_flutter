import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Test",
      home: TestPage(),
    );
  }
}

class TestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black54),
          leading: Builder(
            builder: (context)=> IconButton(onPressed: (){ Scaffold.of(context).openDrawer(); }, icon: const Icon(Icons.accessibility_sharp)),
          ),
          title: Text(''),
          backgroundColor: Colors.white,
          actions: <Widget>[
            new IconButton(
                onPressed: () {},
                icon: new Icon(
                  Icons.circle_notifications_rounded,
                  color: Colors.black45,
                )),
            new IconButton(
                onPressed: () {},
                icon: new Icon(
                  Icons.wallet_giftcard,
                  color: Colors.black45,
                )),
            new IconButton(
                onPressed: () {},
                icon: new Icon(
                  Icons.access_time_filled_rounded,
                  color: Colors.black45,
                ))
          ],
        ),
        drawer: Drawer(

            child: SafeArea(

              child: ListView(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                children: <Widget>[
                  ElevatedButton(onPressed: () {}, child: Text("first")),
                  TextButton(onPressed: () {}, child: Text('Second')),
                  TextButton(onPressed: () {}, child: Text('Third')),
                ],
              ),
            )
        )
    );
  }
}
//
// void testAlert(BuildContext context) {
//   var alert = AlertDialog(
//     title: Text("Test"),
//     content: Text("Done..!"),
//     actions: <Widget>[
//       TextButton(onPressed: (){Navigator.of(context).pop();}, child: Text('OK')),
//       TextButton(onPressed: (){Navigator.of(context).pop();}, child: Text('CANCEL'))
//     ],
//   );
//
//   showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return alert;
//       });
// }
