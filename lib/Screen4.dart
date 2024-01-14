import 'package:flutter/material.dart';
import 'package:google_solution_project/AuthScreen.dart';

class Screen4 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        // Prevent back navigation
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('Screen 4'),
          automaticallyImplyLeading: false, // Set this to false to remove the back button
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
                  SizedBox(width: 16),
                  ElevatedButton(
                    onPressed: () {
                      // Navigate to the next screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AuthScreen()),
                      );
                    },
                    child: Text('Lets get started'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
