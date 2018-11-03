/**
 * @author SevkiBekir
 * @email bekirsevki@gmail.com
 * @create date 2018-11-02 21:59:35
 * @modify date 2018-11-02 21:59:35
 * @desc home class for home screen
*/

import "package:flutter/material.dart";
import '../widgets/cat.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() {
    // TODO: implement createState
    return HomeState();
  }
}

class HomeState extends State<Home> with TickerProviderStateMixin {
  Animation<double> catAnimation;
  AnimationController catAnimationController;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Animation App"),
      ),
      body: GestureDetector(
        child: Center(
          child: Stack(
            overflow: Overflow.visible,
            children: <Widget>[
              buildCatAnimation(),
              buildBox(),
            ],
          ),
        ),
        onTap: onTapGesture,
      ),
    );
  }

  
  Widget buildCatAnimation() {
    return AnimatedBuilder(
      animation: catAnimation,
      child: Cat(),
      builder: (BuildContext context, Widget child) {
        return Positioned(
          child: child,
          bottom: catAnimation.value,
          right: 0.0,
          left: 0.0,
        );
      },
    );
  }

  Widget buildBox() {
    return Container(
      color: Colors.red,
      width: 200.0,
      height: 200.0,
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    catAnimationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );

    catAnimation = Tween(begin: 150.0, end: 190.0).animate(
      CurvedAnimation(
        parent: catAnimationController,
        curve: Curves.easeIn,
      ),
    );
  }

  void onTapGesture() {
    if (catAnimationController.status == AnimationStatus.completed ||
        catAnimationController.status == AnimationStatus.forward) {
      catAnimationController.reverse();
    } else if (catAnimationController.status == AnimationStatus.reverse ||
        catAnimationController.status == AnimationStatus.dismissed) {
      catAnimationController.forward();
    }
  }
}
