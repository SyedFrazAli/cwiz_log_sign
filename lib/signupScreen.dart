// ignore_for_file: camel_case_types, library_private_types_in_public_api, file_names

import 'package:flutter/material.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  _signupState createState() => _signupState();
}

class _signupState extends State<signup> {
  List<String> _titles = ['Mr.', 'Mrs.', 'Miss', 'Dr.'];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      // ignore: prefer_const_literals_to_create_immutables
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Image(
            width: 50,
            height: 30,
            image: AssetImage('assets/images/logo1.png'),
          ),
        ),
        const Text('Email'),
        const TextField(
          obscureText: true,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Email',
          ),
        ),
        const Text('Password'),
        const TextField(
          obscureText: true,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Password',
          ),
        )
      ],
    ));
  }
}
