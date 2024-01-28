import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Flutter Navigation Drawer',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: const [],
      ),
      endDrawer: Drawer(
        child: Container(
          color: Colors.white,
          child: ListView(
            padding: const EdgeInsets.all(0),
            children: [
              Container(
                color: Colors.blue[100],
                child: UserAccountsDrawerHeader(
                  currentAccountPicture: const CircleAvatar(
                    child: FlutterLogo(
                      size: 50,
                    ),
                  ),
                  decoration: BoxDecoration(color: Colors.grey[200]),
                  accountName: const Text(
                    'John Doe',
                    style: TextStyle(color: Colors.black),
                  ),
                  accountEmail: const Text(
                    'john.doe@gmail.com',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              ListTile(
                title: const Text('Menu 1'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Menu 2'),
                onTap: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
