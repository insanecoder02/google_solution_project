import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  final VoidCallback onNextPressed;

  Screen1({required this.onNextPressed});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(
                image: AssetImage('assets/images/logo.png')
            ),
            Text(
              'Mudah Jual Sampah',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 16),
            Text(
              'Menjual sampah, sampahmu pada tempat tertentu dan dapatkan hadiah',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 32),
            ElevatedButton(
              onPressed: onNextPressed,
              child: Text('Next'),
            ),
          ],
        ),
      ),
    );
  }
}
