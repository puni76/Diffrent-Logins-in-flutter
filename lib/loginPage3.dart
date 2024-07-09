import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'loginform.dart';

class LoginPage3 extends StatelessWidget {
  const LoginPage3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SizedBox(
          height: 50.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                'assets/download.jpg',
                height: 50,
              ),
              const SizedBox(width: 25),
              const Text('Login 3'),
              const SizedBox(width: 25),
              Image.asset(
                'assets/download (1).jpg',
                height: 50,
              ),
            ],
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bg2.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: const Center(
          child: Padding(
            padding: EdgeInsets.all(26.0),
            child: LoginForm(),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        //height: 20,
        child: const Center(
          child: Text(
            '@ NIC',
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}


