import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Runtahpedia'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(
                image: AssetImage('assets/images/logo.png')
            ),
            Text(
              'Selamat Datang',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 16),
            Text(
              'Peduli pengolahan sampah',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 16),
            Text(
              'Peduli masa depan',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                // Handle sign in button press
              },
              child: Text('Sign In'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Handle sign up button press
              },
              child: Text('Sign Up'),
            ),
          ],
        ),
      ),
    );
  }
}