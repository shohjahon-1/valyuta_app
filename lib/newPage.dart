// ignore_for_file: unused_import, file_names

import 'package:flutter/material.dart';


class NewPage extends StatefulWidget {
  const NewPage({ Key? key }) : super(key: key);

  @override
  _NewPageState createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[400],
        // ignore: prefer_const_constructors
        title: Text('New Page' , style: TextStyle(color: Colors.white , fontSize: 20 , fontWeight: FontWeight.bold),),
      ),
    );
  }
}


