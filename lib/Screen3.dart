import 'package:flutter/material.dart';
import 'package:google_solution_project/Screen4.dart';

class Screen3 extends StatelessWidget {
  final VoidCallback onBackPressed;
  final VoidCallback onNextPressed;

  Screen3({required this.onBackPressed, required this.onNextPressed});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 3'),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: onBackPressed,
                  child: Text('Back'),
                ),
                SizedBox(width: 16),
                ElevatedButton(
                  onPressed: () {
                    // Navigate to a new screen
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Screen4()),
                    );
                  },
                  child: Text('Next'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
