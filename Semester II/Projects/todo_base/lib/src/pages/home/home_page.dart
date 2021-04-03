import 'package:flutter/material.dart';
import 'package:todo/src/pages/home/tabs/all_todos_tab.dart';
import 'package:todo/src/pages/home/tabs/completed_todos_tab.dart';

class HomePage extends StatefulWidget {
  final String name;

  HomePage({@required this.name});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final tabs = [
    AllTodosTab(),
    CompletedTodosTab(),
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
        title: Text(widget.name),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: tabs.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.format_list_bulleted),
            label: 'Todos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.check),
            label: 'Completed',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.indigo[700],
        onTap: _onItemTapped,
      ),
    );
  }
}
