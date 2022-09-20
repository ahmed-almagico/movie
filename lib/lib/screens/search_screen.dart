import 'package:flutter/material.dart';
import '../data/data_list.dart';
import 'detail screen.dart';

class SearchScreen extends StatelessWidget {
 
TextEditingController Text1 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 45,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Color.fromRGBO(139, 139, 139, 1),),
            child: TextFormField(
              controller: Text1,
              decoration: InputDecoration(hintText: 'Search...' ,  prefixIcon: Icon(Icons.search,color: Colors.black,) , suffixIcon: IconButton(icon:Icon(Icons.clear) ,onPressed:(){Text1.clear();} ,) , ),
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: titleMovie.length,
                itemBuilder: (context, index) {
                return Column(
                  children: [
                    SizedBox(height: 8,),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => DetailScreen(
                                title: titleMovie[index],
                                description: descriptionMovie[index],
                                imageurl: imageMovie[index])));
                      },
                      child: Stack(
                        children: [
                          Card(
                            color: Colors.black,
                            elevation: 10,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.network('${imageMovie[index]}',fit: BoxFit.cover,height: 190,width: double.infinity,),
                              
                            ),
                          ),
                         Padding(
                           padding: const EdgeInsets.only(top: 160),
                           child: Container(
                               height: 40,
                               width: double.infinity,
                               color: Color.fromRGBO(0, 0, 0, .5),
                               child: Padding(
                                 padding: const EdgeInsets.only(top: 7,left: 17),
                                 child: Text('${titleMovie[index]}' , style: TextStyle(color: Colors.white , fontSize: 20),),
                               )),
                         )
                  //Positioned(bottom:7, left: 9,child:
                  ],
                      ),
                    ),
                  ],
                );
              },),
            ),
          )
        ],
      ),
    );
  }
}
