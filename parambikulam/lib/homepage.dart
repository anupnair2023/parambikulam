import 'package:flutter/material.dart';
import 'package:parambikulam/prgm.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: const Color(0xff1F1F1F),
        appBar: AppBar(
          title: const Text('Home'),
          backgroundColor: Colors.black,
          actions: [
            IconButton(
              icon: const CircleAvatar(
                backgroundImage: AssetImage(
                    'assets/images/loginimg.png'), // Replace with your image asset
              ),
              onPressed: () {},
            ),
          ],
          bottom: const TabBar(
            tabs: [Tab(text: "Programs"), Tab(text: "Bookings")],
          ),
        ),
        drawer: const Drawer(),
        body: const TabBarView(
          children: [
            PrgmPage(),
            PrgmPage(),
          ],
        ),
      ),
    );
  }
}
