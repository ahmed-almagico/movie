import 'package:flutter/material.dart';

import '../data/data_list.dart';

class DetailScreen extends StatelessWidget {
  String imageurl ;
  String title ;
  String description ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          'Detail Screen',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Image.network('${imageurl}' , fit: BoxFit.fill,width: double.infinity,height: 300,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Title :' , style: TextStyle(color: Colors.white,fontSize: 20),),
              SizedBox(width: 10,),
              Text('${title}',style: TextStyle(color: Colors.white , fontSize: 20),),
            ],
          ),
          SizedBox(height: 30,),
          Text('description' , style: TextStyle(color: Colors.white,fontSize: 20),),
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.only(left:25 , right: 25),
            child: Text('${description}', style: TextStyle(color: Colors.white,fontSize: 20),),
          )
          
        ],
      ),
    );
  }

  DetailScreen({required this.imageurl ,required this.title , required this.description});
}
