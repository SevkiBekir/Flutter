/**
 * @author SevkiBekir
 * @email bekirsevki@gmail.com
 * @create date 2018-10-22 14:16:38
 * @modify date 2018-10-22 14:16:38
 * @desc provider for bloc
*/


import "package:flutter/material.dart";
import 'bloc.dart';

class Provider extends InheritedWidget{
  final bloc = new Bloc();
  
  Provider({Key key, Widget child}):super(key:key,child:child);

  @override
  bool updateShouldNotify(_) => true;

  static Bloc of(BuildContext context){
    return (context.inheritFromWidgetOfExactType(Provider) as Provider).bloc;
  }

}