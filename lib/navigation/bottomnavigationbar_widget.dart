import 'package:flutter/material.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  State<BottomNavigationBarWidget> createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  final List<Widget> list = const [
    Text('Home'),
    Text('Cart'),
    Text('Favorite'),
    Text('User'),
  ];

  int _selectedIndex = 0;
  List<dynamic> menuItems = [
    {
      'icon': Icons.home,
      'label': 'Home',
    },
    {
      'icon': Icons.shopping_cart,
      'label': 'Cart',
    },
    {
      'icon': Icons.favorite,
      'label': 'Favorite',
    },
    {
      'icon': Icons.person,
      'label': 'Profile',
    }
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Flutter Navigation Bar bottom',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Center(child: list[_selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        unselectedItemColor: Colors.black87,
        elevation: 32,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: const TextStyle(
          height: 1.5,
          fontSize: 12,
        ),
        unselectedLabelStyle: const TextStyle(height: 1.5, fontSize: 12),
        items: menuItems.map((i) {
          return BottomNavigationBarItem(
              activeIcon: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Icon(
                    i['icon'],
                    color: Colors.white,
                  )),
              icon: Icon(
                i['icon'],
              ),
              label: i['label']);
        }).toList(),
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}
