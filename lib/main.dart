import 'package:flutter/material.dart';
import 'package:google_solution_project/profile.dart';
import 'package:google_solution_project/shop.dart';
import 'SplashScreen.dart';
import 'home.dart';
import 'nearby.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RuntahPedia',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    HomePage(),
    NearyBy(),
    shop(),
    profile(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.7, // Adjust the height as needed
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(0), // Change the height of the AppBar
          child: AppBar(
            title: SizedBox.shrink(),
            backgroundColor: Colors.transparent,
            elevation: 0,// Change the color of the AppBar to white
          ),
        ),
        body: _children[_currentIndex],
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          child: SizedBox(
            height: 48.0, // Adjust the height of the BottomAppBar
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.home,
                    color: _currentIndex == 0 ? Colors.green : Colors.grey,
                    size:30,
                  ),
                  onPressed: () => onTabTapped(0),
                ),
                IconButton(
                  icon: Icon(
                    Icons.article,
                    color: _currentIndex == 1 ? Colors.green : Colors.grey,              size:30,
                  ),
                  onPressed: () => onTabTapped(1),
                ),
                IconButton(
                  icon: Icon(
                    Icons.shopping_cart,
                    color: _currentIndex == 2 ? Colors.green : Colors.grey,              size:30,
                  ),
                  onPressed: () => onTabTapped(2),
                ),
                IconButton(
                  icon: Icon(
                    Icons.account_circle,
                    color: _currentIndex == 3 ? Colors.green : Colors.grey,              size:30,
                  ),
                  onPressed: () => onTabTapped(3),
                ),
              ],
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: ClipOval(
          child: Material(
            color: const Color(0xFF2DCC70),
            child: InkWell(
              splashColor: Colors.white,
              child: const SizedBox(width: 56, height: 56, child: Icon(Icons.add, color: Colors.white)),
              onTap: () {
                // Add your FAB action here
              },
            ),
          ),
        ),
      ),
    );
  }
}



