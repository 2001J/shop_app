import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/category.dart';
import 'package:shopping_app/manage.dart';
import 'package:shopping_app/shop.dart';


class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

List pages = [
  const Category(),
  const Manage(),
  const Shop(),


];
int currentIndex = 0;
GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        bottomNavigationBar:  CurvedNavigationBar(
          index: currentIndex,
          animationCurve: Curves.bounceInOut,
          key: _bottomNavigationKey,
          buttonBackgroundColor: Colors.red,
          color:Colors.red,
          onTap: (index){
            setState(() {
              currentIndex=index;
            });
          },
          animationDuration: const Duration(milliseconds: 500),
          items:const [
            CurvedNavigationBarItem(
                child: Icon(Icons.home),label: "Home",
                labelStyle: TextStyle(
                  fontSize: 20,
                )),
            CurvedNavigationBarItem(
                child: Icon(Icons.person),label: "Profile",
                labelStyle: TextStyle(
                  fontSize: 20,
                )),
            CurvedNavigationBarItem(
                child: Icon(Icons.shopping_cart_sharp),label: "Cart",
                labelStyle: TextStyle(
                  fontSize: 20,
                )),
          ],
        ),
        body: pages[currentIndex]
    );
  }
}
