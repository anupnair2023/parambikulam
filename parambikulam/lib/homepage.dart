import 'package:flutter/material.dart';
import 'package:parambikulam/addworker.dart';
import 'package:parambikulam/list.dart';
import 'package:parambikulam/login.dart';
import 'package:parambikulam/prefManager/prefmanager.dart';
import 'package:parambikulam/prgm.dart';
import 'package:parambikulam/server/profile.dart';

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
        drawer: Drawer(
            backgroundColor: const Color(0xff1F1F1F),
            child: ListView(
              children: [
                DrawerHeader(
                  child: Column(
                    children: const [
                      SizedBox(height: 10),
                      Center(
                        child: CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage('assets/images/bg.png'),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text("Anu P Nair",
                          style: TextStyle(fontSize: 20, color: Colors.white)),
                    ],
                  ),
                ),
                const Divider(
                    thickness: .06, color: Color.fromARGB(255, 30, 29, 29)),
                ListTile(
                  iconColor: Colors.white,
                  leading: const Icon(Icons.person),
                  title: const Text('My Profile',
                      style: TextStyle(color: Colors.white)),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ProfilePage()));
                    // Add Navigation logic here
                  },
                ),
                ListTile(
                  iconColor: Colors.white,
                  leading: const Icon(Icons.book),
                  title: const Text('Clients',
                      style: TextStyle(color: Colors.white)),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ListPage()));
                    // Add Navigation logic here
                  },
                ),
                ListTile(
                  iconColor: Colors.white,
                  leading: const Icon(Icons.subscriptions),
                  title: const Text('Log out',
                      style: TextStyle(color: Colors.white)),
                  onTap: () {
                    PrefManager.clearToken();
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const Loginpage())); // Add Navigation logic here
                  },
                ),
                ListTile(
                  iconColor: Colors.white,
                  leading: const Icon(Icons.subscriptions),
                  title: const Text('Add Clients',
                      style: TextStyle(color: Colors.white)),
                  onTap: () {
                    // PrefManager.clearToken();
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const NewworkerPage())); // Add Navigation logic here
                  },
                ),
              ],
            )),
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
