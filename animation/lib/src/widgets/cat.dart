/**
 * @author SevkiBekir
 * @email bekirsevki@gmail.com
 * @create date 2018-11-03 13:00:09
 * @modify date 2018-11-03 13:00:09
 * @desc cat class to show cat on screen
*/

import "package:flutter/material.dart";

class Cat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Image.network("https://i.imgur.com/QwhZRyL.png"),
    );
  }
}
