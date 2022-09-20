import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../data/data_list.dart';
import '../widgets/movies.dart';
import 'detail screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(13),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Trending',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'See All',
                        style: TextStyle(fontSize: 20),
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 13,
            ),
            Container(
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
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('New Movies' , style: TextStyle(fontSize: 20 , color: Colors.white),),
                TextButton(onPressed: (){}, child: Text('See All',style: TextStyle(fontSize: 20),)),

              ],
            ),
            movie1(),
          ],
        ));
  }
}
