import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flag/flag.dart';

// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List json = [];
  var url = Uri.parse('https://nbu.uz/uz/exchange-rates/json/');

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getResponse();
  }

  Future<void> getResponse() async {
    var response = await http.get(url);

    json = jsonDecode(response.body);
    this.json = json;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            // TextButton(
            //   child: Text('Get'),
            //   onPressed: () {
            //     // setState(() {
            //     getResponse();
            //     // });
            //   },
            // ),
            Expanded(
              child: ListView.builder(
                itemCount: json.length ?? 0,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      // DropdownButton(items: List<DropdownMenuItem<dynamic>> [
                      //   json[index]['code'],
                      // ]),
                      ListTile(
                        leading: Flag.fromString(
                          json[index]['code'],
                          height: 10,
                          width: 100,
                          fit: BoxFit.fill,
                        ),
                        title: Text(json[index]['title'].toString()),
                        subtitle: Text(json[index]['cb_price'] + "so'm"),
                      ),
                    ],
                  );
                },
              ),
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Currency App'),
      ),
    );
  }
}
// <<<<<<< HEAD

/// bordimi
/// 
/// bordimi
// =======
///snifnsfnfnuwafuif'dch
///h
///rtear
///gs
///e
///w
///d
///tir
///6ruy
///g
///y6
///5ru
///y
///r
///6dj
///h
///5
///r6dh
///f
// <<<<<<< HEAD
// >>>>>>> refs/remotes/origin/master
// =======
///
///
///HECH BALO YOQ
///
// >>>>>>> 7a638345afd29e7adceb57bd547dd00cbfbe0aad
