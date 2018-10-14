/**
 * @author SevkiBekir
 * @email bekirsevki@gmail.com
 * @create date 2018-10-14 13:11:05
 * @modify date 2018-10-14 13:11:05
 * @desc  login With Stateful App
*/

import 'package:flutter/material.dart';
import 'screens/login_screen.dart';

class App extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Login App"),
        ),
        body: LoginScreen(),
      ),
    );

  }


}
