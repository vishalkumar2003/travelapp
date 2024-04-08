import 'package:flutter/material.dart';
import 'package:travel/Bookmark.dart';
import 'package:travel/Home.dart';
import 'package:travel/Profile.dart';
import 'package:travel/Ticket.dart';
class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _bottomIndex = 0;

  List<Widget> _screens = [
    const Home(),
    const Bookmark(),
    const Ticket(), 
    const Profile(), // No const keyword here
    // No const keyword here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: _screens[_bottomIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _bottomIndex,
        onTap: (index) {
          setState(() {
            _bottomIndex = index;
          });
        },
        selectedItemColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined,color: Colors.grey,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_border_outlined,color: Colors.grey,),
            label: 'Bookmark',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.airplane_ticket_outlined,color: Colors.grey,),
            label: 'Ticket',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline,color: Colors.grey,),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
