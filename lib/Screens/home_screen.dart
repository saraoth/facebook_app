import 'package:facebook_app/Screens/login_screen.dart';
import 'package:facebook_app/widgets/post_screen.dart';
import 'package:facebook_app/widgets/story_item.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String routName='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),

      ),
      body:

      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: ListView.separated(
                scrollDirection: Axis.horizontal, // width
                  itemBuilder:( _,__)=>StoryItem(),
                  separatorBuilder:( _,__)=>SizedBox(width: 16,)
                  , itemCount: 10),
            ),

            SizedBox(height: 10,),

            Expanded(
              flex: 8,
              child: ListView.separated(
                  scrollDirection: Axis.vertical, // width
                  itemBuilder:( _,__)=>PostItem(),
                  separatorBuilder:( _,__)=>SizedBox(width: 16,)
                  , itemCount: 10),
            )

          ],
        ),
      )
    );
  }
}
