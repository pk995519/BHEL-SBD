import 'package:flutter/material.dart';

class WhatsAppClonePage extends StatefulWidget {
  @override
  _WhatsAppClonePageState createState() => _WhatsAppClonePageState();
}

class _WhatsAppClonePageState extends State<WhatsAppClonePage> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void _onBottomNavigationBarItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    _tabController.animateTo(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BHEL"),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(text: 'Chat'),
            Tab(text: 'Status'),
            Tab(text: 'Report'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          // Chat Page
          Center(
            child: Text('Chat Page'),
          ),
          // Status Page
          Center(
            child: Text('Status Page'),
          ),
          // Report Page
          Center(
            child: Text('Report Page'),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Operations',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work),
            label: 'Job Card',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onBottomNavigationBarItemTapped,
      ),
    );
  }
}
