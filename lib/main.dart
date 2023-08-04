import 'package:flutter/material.dart';
import 'Foodmenu.dart';

// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings, avoid_print
void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      home: MyHomePage(),
      theme: ThemeData(primarySwatch: Colors.pink),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<FoodMenu> menu = [
    FoodMenu("Shirm", "500", "assets/images/man-g74cd595bb_1280.jpg"),
    FoodMenu("Kha praw", "60", "assets/images/mountains-gc693420bc_1280.jpg"),
    FoodMenu(
        "Nom jeb", "20", "assets/images/owl-butterfly-g34e2df4ed_1280.jpg"),
    FoodMenu("Oper", "865", "assets/images/squirrel-g8047d321a_1280.jpg")
  ];
  //display data
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("Menu"),
          ),
        ),
        body: ListView.builder(
            itemCount: menu.length,
            itemBuilder: (BuildContext context, int index) {
              FoodMenu food = menu[index];
              return ListTile(
                leading: Image.asset(
                  food.img,
                  width: 50,
                  height: 50,
                ),
                title: Text(
                  "MENU " + food.name,
                  style: TextStyle(fontSize: 30),
                ),
                subtitle: Text(
                  "Price " + food.price,
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () => {print("You choose " + food.name)},
              );
            }));
  }
}
