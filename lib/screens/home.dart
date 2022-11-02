import 'dart:ffi';

import 'package:apiitestingapp/logic/myapi.dart';
import 'package:flutter/material.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Text(
              "BreakingBad API ",
              style: TextStyle(fontSize: 30),
            ),
            Divider(height: 70),
            TextField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.blue.shade100,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  hintStyle: TextStyle(color: Colors.purple, fontSize: 20),
                  prefixIcon: Icon(Icons.search),
                  labelText: "ID#",
                  hintText: "please enter the id of the character"),
              onSubmitted: (data) {
                String char_id = data;
                BreakingBad myobject = BreakingBad();
                myobject.get(char_id: char_id);
              },
            )
          ],
        ),
      ),
    );
  }
}
