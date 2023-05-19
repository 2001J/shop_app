// TODO Implement this library.
import 'package:flutter/material.dart';

class Radios extends StatefulWidget {
  const Radios({Key? key}) : super(key: key);

  @override
  State<Radios> createState() => _RadiosState();
}

class _RadiosState extends State<Radios> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Accessories"),
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
          const SizedBox(
            height: 7,
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
                    image: AssetImage("assets/img_6.png"),
                  )),

              const Text(
                "Keyboard",
                style: TextStyle(fontSize: 25),
              ),
              const Text(
                "100€",
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
