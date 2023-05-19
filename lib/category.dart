// TODO Implement this library.

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/extra.dart';
import 'package:shopping_app/login.dart';
import 'mobile.dart';
import 'manage.dart';
import 'cameras.dart';
import 'laptops.dart';
import 'desktop.dart';
import 'shop.dart';
import 'accessories.dart';

class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        title: const Text(
          "Home",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.red[900],
      ),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  blurRadius: 5,
                  blurStyle: BlurStyle.normal,
                  offset: Offset(1, 1),
                  color: Colors.yellow,
                ),
                BoxShadow(
                  blurRadius: 5,
                  blurStyle: BlurStyle.normal,
                  offset: Offset(-1, -1),
                  color: Colors.black,
                ),
              ],
            ),
            padding: const EdgeInsets.all(8),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Cell()),
                );
              },
              child: const Text(
                'Mobile Phones',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  blurRadius: 5,
                  blurStyle: BlurStyle.normal,
                  offset: Offset(1, 1),
                  color: Colors.yellow,
                ),
                BoxShadow(
                  blurRadius: 5,
                  blurStyle: BlurStyle.normal,
                  offset: Offset(-1, -1),
                  color: Colors.black,
                ),
              ],
            ),
            padding: const EdgeInsets.all(8),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Car()),
                );
              },
              child: const Text(
                'Laptops',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  blurRadius: 5,
                  blurStyle: BlurStyle.normal,
                  offset: Offset(1, 1),
                  color: Colors.yellow,
                ),
                BoxShadow(
                  blurRadius: 5,
                  blurStyle: BlurStyle.normal,
                  offset: Offset(-1, -1),
                  color: Colors.black,
                ),
              ],
            ),
            padding: const EdgeInsets.all(8),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Desktop()),
                );
              },
              child: const Text(
                'Desktops',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  blurRadius: 5,
                  blurStyle: BlurStyle.normal,
                  offset: Offset(1, 1),
                  color: Colors.yellow,
                ),
                BoxShadow(
                  blurRadius: 5,
                  blurStyle: BlurStyle.normal,
                  offset: Offset(-1, -1),
                  color: Colors.black,
                ),
              ],
            ),
            padding: const EdgeInsets.all(8),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Screens()),
                );
              },
              child: const Text(
                'Cameras',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  blurRadius: 5,
                  blurStyle: BlurStyle.normal,
                  offset: Offset(1, 1),
                  color: Colors.yellow,
                ),
                BoxShadow(
                  blurRadius: 5,
                  blurStyle: BlurStyle.normal,
                  offset: Offset(-1, -1),
                  color: Colors.black,
                ),
              ],
            ),
            padding: const EdgeInsets.all(8),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Radios()),
                );
              },
              child: const Text(
                'Other Accessories',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              const SizedBox(
                height: 120.0,
                child: DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.red,
                  ),
                  child: Text('Menu',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.manage_accounts_rounded),
                title: const Text(
                  'Manage Profile',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Manage()),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.category),
                title: const Text(
                  'Categories',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const WelcomePage()),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.shopping_cart),
                title: const Text(
                  'Shopping Cart',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Shop()),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.logout),
                title: const Text(
                  'Log out',
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  FirebaseAuth.instance
                      .signOut()
                      .then((value) => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const loginpage()),
                          ));
                },
              ),
            ]),
      ),
    );
  }
}
