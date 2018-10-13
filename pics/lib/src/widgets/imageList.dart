/**
 * @author SevkiBekir
 * @email bekirsevki@gmail.com
 * @create date 2018-10-13 14:53:37
 * @modify date 2018-10-13 14:53:37
 * @desc class of imageList State Widget 
*/
import '../models/imageModel.dart';
import 'package:flutter/material.dart';

class ImageList extends StatelessWidget {
  final List<ImageModel> imageModelList;

  ImageList(this.imageModelList);

  Widget build(context) {
    return ListView.builder(
      itemCount: imageModelList.length,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.all(10.0),
          padding: EdgeInsets.all(2.0),
          decoration: BoxDecoration(
            border: Border.all(width: 2.0, color: Colors.black),

          ),
          child: Column(
            children: <Widget>[
              Container(
                child: Image.network(imageModelList[index].url),
              ),
              Container(
                child: Text(imageModelList[index].title,style: TextStyle(fontSize: 14.0),),
                margin: EdgeInsets.symmetric(vertical: 2.0),
              ),
              
              
            ],
          ),
        );
      },
    );
  }
}
