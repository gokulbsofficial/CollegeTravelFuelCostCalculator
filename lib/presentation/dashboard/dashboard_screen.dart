import 'package:flutter/material.dart';
import 'package:travel2mar/presentation/home/home_screen.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TRAVEL 2 MAR'),
        centerTitle: true,
      ),
      body: const HomeScreen(),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(
            icon: Icon(Icons.compare_arrows), label: 'Transaction'),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
      ]),
    );
  }
}
