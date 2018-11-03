/**
 * @author SevkiBekir
 * @email bekirsevki@gmail.com
 * @create date 2018-11-02 21:56:33
 * @modify date 2018-11-02 21:56:33
 * @desc app class
*/

import "package:flutter/material.dart";
import 'screens/home.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Animation",
      home: Home(),
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
    );
  }
}