
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import 'loginform.dart';

class Loginpage1 extends StatefulWidget {
  const Loginpage1({super.key});

  @override
  State<Loginpage1> createState() => _Loginpage1State();
}

class _Loginpage1State extends State<Loginpage1>
{

  @override
  Widget build(BuildContext context)
  {
     double  height =  MediaQuery.of(context).size.height;
     return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Center(
          child: Text(
            'Login',
            textAlign: TextAlign.center, // or TextAlign.end if you prefer
            style: TextStyle(
              //fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white70,
            ),
          ),
        ),
      ),
     body: SingleChildScrollView(
       scrollDirection: Axis.vertical,
       child: Container(
         padding: EdgeInsets.all(20),
         alignment: Alignment.center,
         height: height,
         color: Colors.blue,
        child: LoginForm(),
       ),
     ),





      bottomNavigationBar: BottomAppBar(
        color: Colors.blueGrey,
        height: 50,
        child: const Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.circle_notifications_outlined, color: Colors.white70),
                SizedBox(width: 5),
                Text(
                  'National Informatic Center',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white70,
                  ),
                ),
              ],
            )),
      ),
    );
  }
}

