import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, home: const MyHomePage());
  }
}

enum _BottomNavBar { home, bookmark, notifications, profile }

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _BottomNavBar.values.length,
      child: Scaffold(
        bottomNavigationBar: BottomAppBar(color: Colors.blueGrey.shade900,
          child: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home)),
              Tab(icon: Icon(Icons.notification_add)),
              Tab(icon: Icon(Icons.settings)),
              Tab(icon: Icon(Icons.person_off_outlined)),
            ],
          ),
        ),
        body: TabBarView(children: [
          Icon(Icons.home),
          Icon(Icons.notification_add),
          Icon(Icons.settings),
          Icon(Icons.person_off_outlined),
        ]),
      ),
    );
  }
}
