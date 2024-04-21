import 'package:facebook_app/Screens/home_screen.dart';
import 'package:facebook_app/Screens/login_screen.dart';
import 'package:facebook_app/widgets/post_screen.dart';
import 'package:facebook_app/widgets/story_item.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Facebook',

      initialRoute: LoginScreen.routeName,

      routes: {
        LoginScreen.routeName: (_) => LoginScreen(),  //arrow function
        // HomeScreen.routName: (_) => HomeScreen(),
        // PostItem.routName:(_)=>PostItem(),
        // StoryItem.routName:(_)=>StoryItem(),
        //arrow function
      },

      /*
      routes: {
        LoginScreen.routeName: (context) {
         return LoginScreen(),
        }
        anonymous function
       */



    );
  }
}