// TODO Implement this library.
import 'package:flutter/material.dart';
/*import 'package:firebase_auth/firebase_auth.dart';
import 'package:shopping_app/login.dart';
import 'category.dart';
import 'manage.dart';*/

class Shop extends StatefulWidget {
  const Shop({Key? key}) : super(key: key);

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shopping Cart"),
        centerTitle: true,
        backgroundColor: Colors.red[900],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              Icons.shopping_cart,
              color: Colors.green,
              size: 30.0,
            ),
            Text(
              'No any selected items to purchase',
              style: TextStyle(color: Colors.grey),
            )
          ],
        ),
      ),
      /*drawer: Drawer(
        child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              const SizedBox(
                height: 120.0,
                child: DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.brown,
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
                    MaterialPageRoute(builder: (context) => const Category()),
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
      ),*/
    );
  }

  logIn() {}
}
