// TODO Implement this library.
import 'package:flutter/material.dart';

class Car extends StatefulWidget {
  const Car({Key? key}) : super(key: key);

  @override
  State<Car> createState() => _MobileState();
}

class _MobileState extends State<Car> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Laptops"),
        centerTitle: true,
        backgroundColor: Colors.red[900],
      ),
      body: ListView.builder(
          itemCount: 1,
          itemBuilder: (_, int index) {
            return const phoneCategotires();
          }),
    );
  }
}

class phoneCategotires extends StatelessWidget {
  final productImage;
  final productPrice;
  final productName;
  const phoneCategotires(
      {Key? key, this.productImage, this.productPrice, this.productName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const CircleAvatar(
                backgroundColor: Colors.red,
                  radius: 70,
                  child: Image(
                    image: AssetImage("assets/img_3.png"),
                  )),

              const Text(
                "Razor",
                style: TextStyle(fontSize: 25),
              ),
              const Text(
                "699€",
                style: TextStyle(fontSize: 25),
              ),
              OutlinedButton(onPressed: () {}, child: const Text("Add")),
              // IconButton(onPressed: (){
              // }, icon: const Icon(Icons.add_circle,size: 30,)),
            ],
          ),
          const SizedBox(
            height: 7,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const CircleAvatar(backgroundColor: Colors.red,
                  radius: 70,
                  child: Image(
                    image: AssetImage("assets/img_4.png"),
                  )),

              const Text(
                "Dell-Xp",
                style: TextStyle(fontSize: 25),
              ),
              const Text(
                "499€",
                style: TextStyle(fontSize: 25),
              ),
              OutlinedButton(onPressed: () {}, child: const Text("Add")),
              // IconButton(onPressed: (){
              // }, icon: const Icon(Icons.add_circle,size: 30,)),
            ],
          ),
          const SizedBox(
            height: 7,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const CircleAvatar(
                backgroundColor: Colors.red,
                  radius: 70,
                  child: Image(
                    image: AssetImage("assets/img_5.png"),
                  )),

              const Text(
                "Apple",
                style: TextStyle(fontSize: 25),
              ),
              const Text(
                "399€",
                style: TextStyle(fontSize: 25),
              ),
              OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () {},
                  child: const Text("Add")),

              // IconButton(onPressed: (){
              // }, icon: const Icon(Icons.add_circle,size: 30,)),
            ],
          ),
        ],
      ),
    );
  }
}
