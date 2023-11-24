import 'package:flutter/material.dart';
import 'package:paynet_clone/screens/main/home/home_screens.dart';
import 'package:paynet_clone/screens/main/home/transaction/transaction_pages.dart';

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({super.key});

  @override
  State<BottomNavigationBarExample> createState() =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    Transaction(),
    SizedBox(),
    SizedBox(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Asosiy',
         ),
          BottomNavigationBarItem(
              icon: Icon(Icons.restart_alt),
              label: 'Otkazmalar',
           ),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_balance_wallet_rounded),
              label: 'Tolovlar',
              ),
          BottomNavigationBarItem(
            icon: Icon(Icons.access_time_filled_outlined),
            label: 'Tarix',

          ),
        ],
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.green,
        showUnselectedLabels: true,
        onTap: _onItemTapped,
      ),
    );
  }
}
