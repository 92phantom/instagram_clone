import 'package:flutter/material.dart';
import 'package:instagram_clon/account_page.dart';
import 'package:instagram_clon/home_page.dart';
import 'package:instagram_clon/search_page.dart';

class TabPage extends StatefulWidget {
  @override
  _TabPageState createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {

  int _selectedIdx = 0;

  List _pages = [
    HomePage(),
    SearchPage(),
    AccountPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:_pages[_selectedIdx],
      ),

      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.black,
        onTap: _onItemTapped,
        currentIndex: _selectedIdx,
        items: <BottomNavigationBarItem> [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('home')),
          BottomNavigationBarItem(icon: Icon(Icons.search), title: Text('search')),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle), title: Text('account')),
        ],),
    );
  }

  void _onItemTapped(int value) {
    setState(() {
      _selectedIdx = value;
    });
  }
}
