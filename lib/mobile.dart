import 'package:flutter/material.dart';
class Cell extends StatefulWidget {
  const Cell({Key? key}) : super(key: key);

  @override
  State<Cell> createState() => _MobileState();
}
class _MobileState extends State<Cell> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mobile Phones"),
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

class phoneCategotires extends StatefulWidget {
  const phoneCategotires({Key? key}) : super(key: key);

  @override
  State<phoneCategotires> createState() => _phoneCategotiresState();
}

int counter = 0;

class _phoneCategotiresState extends State<phoneCategotires> {
  void increment() {
    counter++;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const CircleAvatar(backgroundColor:Colors.red,
                  radius: 70,
                  child: Image(
                    image: AssetImage("assets/img.png"),
                  )),

              const Text(
                "Iphone ",
                style: TextStyle(fontSize: 20),
              ),
              const Text(
                "69.99€",
                style: TextStyle(fontSize: 20),
              ),
              OutlinedButton(
                  onPressed: () {
                    setState(() {});
                  },
                  child: const Text("Add")),
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
                    image: AssetImage("assets/img_1.png"),
                  )),

              const Text(
                "Xiaomi",
                style: TextStyle(fontSize: 20),
              ),
              const Text(
                "49.99€",
                style: TextStyle(fontSize: 20),
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
                    image: AssetImage("assets/img_2.png"),
                  )),

              const Text(
                "Huawei",
                style: TextStyle(fontSize: 20),
              ),
              const Text(
                "39.99€",
                style: TextStyle(fontSize: 20),
              ),
              OutlinedButton(onPressed: () {}, child: const Text("Add")),
              // IconButton(onPressed: (){
              // }, icon: const Icon(Icons.add_circle,size: 30,)),
            ],
          ),
        ],
      ),
    );
  }
}
