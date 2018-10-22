/**
 * @author SevkiBekir
 * @email bekirsevki@gmail.com
 * @create date 2018-10-20 18:18:48
 * @modify date 2018-10-20 18:18:48
 * @desc App class
*/
import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'blocs/provider.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
      child: MaterialApp(
        home: new Scaffold(
          appBar: new AppBar(
            title: new Text("Login App"),
          ),
          body: LoginScreen(),
        ),
      ),
    );
  }
}
