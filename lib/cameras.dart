// TODO Implement this library.
import 'package:flutter/material.dart';
class Screens extends StatefulWidget {
  const Screens({Key? key}) : super(key: key);

  @override
  State<Screens> createState() => _ScreensState();
}

class _ScreensState extends State<Screens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cameras"),
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
  final producPrice;
  final productName;
  const phoneCategotires(
      {Key? key, this.productImage, this.producPrice, this.productName})
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
              const CircleAvatar(backgroundColor: Colors.red,
                  radius: 70,
                  child: Image(
                    image: AssetImage("assets/img_3.png"),
                  )),

              const Text(
                "Cannon",
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
                "Sony",
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
              const CircleAvatar(backgroundColor: Colors.red,
                  radius: 70,
                  child: Image(
                    image: AssetImage("assets/img_5.png"),
                  )),

              const Text(
                "LG",
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
