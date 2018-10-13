/**
 * @author SevkiBekir
 * @email bekirsevki@gmail.com
 * @create date 2018-10-10 22:56:04
 * @modify date 2018-10-10 22:56:04
 * @desc App Class
*/

import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;
import 'dart:convert';
import 'models/imageModel.dart';
import 'widgets/imageList.dart';

class App extends StatefulWidget {
  AppState createState() {
    return new AppState();
  }
}

class AppState extends State<App> {
  int counter = 0;
  List<ImageModel> imageModelList = new List<ImageModel>();

  void fetchImage() {
    counter++;
    get("https://jsonplaceholder.typicode.com/photos/$counter")
        .then((response) {
      ImageModel imageModel = ImageModel.fromJson(json.decode(response.body));

      setState(() {
        imageModelList.add(imageModel);
      });
    });
  }

  Widget build(context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Images"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: fetchImage,
        child: Icon(Icons.add),
      ),
      body: ImageList(imageModelList),
    ));
  }

  Widget printText() {
    if (counter != 0) {
      return Text("$counter was added new images!");
    }
    return Text("There is no any added new image!");
  }
}
