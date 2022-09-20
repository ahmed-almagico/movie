import 'package:flutter/material.dart';

import '../data/data_list.dart';
import '../screens/detail screen.dart';
/*
Widget movie (){
  return Container(
    width: double.infinity,
    height: 200,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: titleMovie.length,
      itemBuilder: (context, index){
      return Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.network('${imageMovie[index]}'),),
          Positioned(child: Text('${titleMovie[index]}'),)
        ],
      );
    } ,),
  );
}
*/
Widget movie1(){
  return Container(
    width: double.infinity,
    height: 200,
    child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: titleMovie.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => DetailScreen(
                      title: titleMovie[index],
                      description: descriptionMovie[index],
                      imageurl: imageMovie[index])));
            },
            child: Card(
              color: Colors.black,
              elevation: 10,
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.network('${imageMovie[index]}'),
                  ),
                  Positioned(
                    child: Text(
                      '${titleMovie[index]}',
                      style: TextStyle(
                          color: Colors.white, fontSize: 20),
                    ),
                    bottom: 1,
                    right: 1,
                    left: 35,
                  ),
                ],
              ),
            ),
          );
        }),
  );
}