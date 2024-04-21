import 'package:facebook_app/Screens/home_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
        body: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,  //width of screen
            // mainAxisAlignment: MainAxisAlignment.center, //centerlize the column
            children: [
              Spacer(
                flex: 4,
              ),

              Icon(Icons.facebook,color: Colors.white,size: 70,),

              Spacer(
                flex: 2,
              ),

              TextField(
                decoration:InputDecoration(
                  hintText: 'Email  ',
                  hintStyle: TextStyle(
                    fontSize: 20,color: Colors.white70),
                    enabledBorder: UnderlineInputBorder(borderSide: BorderSide(
                      color: Colors.white38,
                    )
                    )
                  )
                ) ,

            SizedBox(height: 16,),

              TextField(
              decoration:InputDecoration(
                  hintText: 'Password',
                  hintStyle: TextStyle(
                      fontSize: 20,color: Colors.white70),
                  enabledBorder: UnderlineInputBorder(borderSide: BorderSide(
                    color: Colors.white38,
                  )
                  )
              )
          ),

              ElevatedButton(onPressed: (){
                Navigator.of(context).pushReplacementNamed(HomeScreen.routName);
              },
                  child: Text ('LOG IN',
                   style: TextStyle(fontSize: 18,color:Colors.white38),
                  ),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 12,),
                  backgroundColor:Color.fromRGBO(78,104, 160 , 1),
                ),

                ),

                 Spacer(flex: 3,),

                 Text('Sign up for FC',
                     style: TextStyle(color: Colors.white,
                   fontSize: 18),
                   textAlign: TextAlign.center,
                 ),

                 SizedBox(height: 20,),

                 Text('Forget password',
          style: TextStyle(color: Colors.white,
          fontSize: 18,),
                   textAlign: TextAlign.center,
                 ),

              Spacer(flex: 1,),
          ],
          ),
        ),
    );
  }
}
