import 'package:flutter/material.dart';

class StoryItem extends StatelessWidget {
  static const String routName='';


  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius:BorderRadius.circular(20) ,
      child: Stack(
        //layers ==> use stack ==> FILO ==> first in last out
        children: [
          Image.asset('assets/images/facebookStory.jpg'),
          CircleAvatar(child: Icon(Icons.person),radius: 15,),
          Positioned(
            bottom: 0,
            left: 8,
            child: Text('Owner' ,
              style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold),),
          )

        ],
      ),
    );
  }
}
