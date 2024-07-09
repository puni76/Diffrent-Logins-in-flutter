import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'loginPage2.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _gstController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // Navigate to the home page
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const LoginPage2()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            controller: _nameController,
            decoration: InputDecoration(
              labelText: 'User Name',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.0),
                borderSide: const BorderSide(),
              ),
              filled: true,
              fillColor: const Color(0xFFDCE8FF),
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your user name';
              }
              return null;
            },
            inputFormatters: [],
          ),
          const SizedBox(height: 16.0),
          TextFormField(
            controller: _gstController,
            decoration: InputDecoration(
              labelText: 'Gstin',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.0),
                borderSide: const BorderSide(),
              ),
              filled: true,
              fillColor: const Color(0xFFDCE8FF),
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter a valid gst number';
              }
              return null;
            },
          ),
          const SizedBox(height: 16.0),
          TextFormField(
            obscureText: true,
            controller: _passwordController,
            decoration: InputDecoration(
              labelText: 'Password',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.0),
                borderSide: const BorderSide(),
              ),
              filled: true,
              fillColor: const Color(0xFFDCE8FF),
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your password';
              }
              return null;
            },
          ),
          const SizedBox(height: 26.0),
          SizedBox(
            //width: double.infinity, // Makes the button take up full width
            child: ElevatedButton(
              onPressed: _submitForm,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors
                    .indigo, // Make button transparent to show container color
              ),
              child: Text(
                'Submit',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          const SizedBox(height: 18.0),
          Text(
            'Device Number',
            style: TextStyle(
              color: Colors.indigo,
              backgroundColor: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 16.0),
          Text(
            "Version 1.0",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.amberAccent),
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.facebook,
                      color: Colors.white70, size: 30), // Facebook icon
                  SizedBox(height: 5),
                  Text(
                    'Facebook',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.g_mobiledata_outlined,
                      color: Colors.white70, size: 30), // Google icon
                  SizedBox(height: 5),
                  Text(
                    'Google',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}