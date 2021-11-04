import 'dart:convert';

import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'package:flag/flag.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({ Key? key }) : super(key: key);

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
    );
  }
}
