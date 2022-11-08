import 'package:flip/drawer/drawer.dart';
import 'package:flip/home/homepage.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _currentindex = 0;
  List<Widget> one = [
    const HomePage(),
    const Text('data'),
    const Text('data'),
    const Text('data'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      
      body: one[_currentindex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        currentIndex: _currentindex,
        onTap: (value) {
          setState(() {
            _currentindex = value;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled,color: Colors.black),
          label: 'Home',
          
          backgroundColor: Colors.black
          
          ),

           BottomNavigationBarItem(icon: Icon(Icons.favorite,color: Colors.black,),
          label: 'Favourites',
          backgroundColor: Colors.black
          
          ),
           BottomNavigationBarItem(icon: Icon(Icons.search,color: Colors.black),
          label: 'search',
          backgroundColor: Colors.black
          
          ),
           BottomNavigationBarItem(icon: Icon(Icons.person,color: Colors.black),
          label: 'Profile',
          backgroundColor: Colors.black
          
          )

        ],
      ),
    );
  }
}
