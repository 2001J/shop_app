// TODO Implement this library.
//import 'package:firebase_auth/firebase_auth.dart';
//import 'package:shopping_app/login.dart';

//import 'shop.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

//import 'category.dart';  //okay the commented imports once used for other purposes.

class Manage extends StatefulWidget {
  const Manage({Key? key}) : super(key: key);

  @override
  State<Manage> createState() => _ManageState();
}

class _ManageState extends State<Manage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Manage Profile"),
        centerTitle: true,
        backgroundColor: Colors.red[900],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Container(
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 2,
                      color: Colors.grey,
                      spreadRadius: 2,
                    )
                  ],
                  borderRadius: BorderRadius.circular(15)),
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Shimmer.fromColors(
                    baseColor: Colors.grey,
                    highlightColor: Colors.red,
                    child: const Text(
                      "Joseph Paul Koyi",
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                  Shimmer.fromColors(
                    baseColor: Colors.grey,
                    highlightColor: Colors.blue,
                    child: const Text(
                      "210218316",
                      style: TextStyle(fontSize: 24),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Container(
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 2,
                      color: Colors.grey,
                      spreadRadius: 2,
                    )
                  ],
                  borderRadius: BorderRadius.circular(15)),
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Shimmer.fromColors(
                    baseColor: Colors.grey,
                    highlightColor: Colors.red,
                    child: const Text(
                      "Muhammad Faizan",
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                  Shimmer.fromColors(
                    baseColor: Colors.grey,
                    highlightColor: Colors.blue,
                    child: const Text(
                      "210218304",
                      style: TextStyle(fontSize: 24),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Container(
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 2,
                      color: Colors.grey,
                      spreadRadius: 2,
                    )
                  ],
                  borderRadius: BorderRadius.circular(15)),
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Shimmer.fromColors(
                    baseColor: Colors.grey,
                    highlightColor: Colors.red,
                    child: const Text(
                      "Momen Alhaddad",
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                  Shimmer.fromColors(
                    baseColor: Colors.grey,
                    highlightColor: Colors.blue,
                    child: const Text(
                      "210218317",
                      style: TextStyle(fontSize: 24),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Container(
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 2,
                      color: Colors.grey,
                      spreadRadius: 2,
                    )
                  ],
                  borderRadius: BorderRadius.circular(15)),
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Shimmer.fromColors(
                    baseColor: Colors.grey,
                    highlightColor: Colors.red,
                    child: const Text(
                      "Mohammad Majeed",
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                  Shimmer.fromColors(
                    baseColor: Colors.grey,
                    highlightColor: Colors.blue,
                    child: const Text(
                      "210218347",
                      style: TextStyle(fontSize: 24),
                    ),
                  )
                ],
              ),
            ),
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
}
