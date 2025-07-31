import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.add),
        title: Text("Routes"),
        centerTitle: true,
      ),
      body: Container(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, 'second');
          },
          child: Text('press me'),
        ),
      ),
      bottomNavigationBar: GNav(
        gap: 8,
        padding: EdgeInsets.all(16),
        tabs: [
          GButton(
            icon: Icons.add,
            text: 'Add',
            onPressed: () {
              Navigator.pushNamed(context, 'second');
            },
          ),
          GButton(
            icon: Icons.local_activity,
            text: 'Activity',
            onPressed: () {
              // You can add navigation or action here
            },
          ),
          GButton(
            icon: Icons.wallet,
            text: 'Wallet',
            onPressed: () {
              // You can add navigation or action here
            },
          ),
        ],
      ),
    );
  }
}
