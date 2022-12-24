// ignore_for_file: camel_case_types, library_private_types_in_public_api, file_names

import 'dart:math';

import 'package:flutter/material.dart';

class signUp extends StatefulWidget {
  const signUp({super.key});

  @override
  _signUpState createState() => _signUpState();
}

class _signUpState extends State<signUp> {
  String _selectedTitle = 'Title';
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      // ignore: prefer_const_literals_to_create_immutables
      children: <Widget>[
        Container(
          width: 250,
          height: 150,
          child: const Padding(
            padding: EdgeInsets.only(top: 25.0),
            child: Image(
              width: 50,
              height: 30,
              image: AssetImage('assets/images/logo1.png'),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: DropdownButtonFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green)),
                  labelText: 'Title',
                ),
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedTitle = newValue!;
                  });
                },
                value: _selectedTitle,
                items: <String>['Mr.', 'Mrs.', 'Ms.', 'Dr.']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green)),
                  labelText: 'First Name',
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Last Name',
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Username',
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Confirm Password',
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Container(
                width: 320,
                height: 50,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                    Color.fromARGB(250, 167, 204, 0),
                  )),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text("Already have an account!"),
            SizedBox(
              height: 10,
            ),
            Text(
              "Login here!",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        SizedBox(
          height: 60,
        ),
        Stack(children: <Widget>[
          Container(
              width: 500,
              height: 400,
              child: Transform.rotate(
                angle: -30 * pi / 180,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: ColorFiltered(
                        colorFilter: ColorFilter.mode(
                          Color.fromARGB(255, 6, 96, 1).withOpacity(0.7),
                          BlendMode.srcATop,
                        ),
                        child: Opacity(
                          opacity: 0.4,
                          child: Image.asset(
                            'assets/images/Rectangle8.jpeg',
                            fit: BoxFit.fitHeight,
                          ),
                        ))),
              )),
          Padding(
            padding: EdgeInsets.only(left: 60, top: 50, right: 60),
            child: Text(
              ' "Login into self love and logout into someone else love otherwise you will forget your password of Happiness"\t\t\t\n\nMa Deuce',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 130, top: 170, right: 40),
            child: Image(
              width: 100,
              height: 50,
              image: AssetImage('assets/images/logow.png'),
            ),
          ),
        ])
      ],
    ));
  }
}
