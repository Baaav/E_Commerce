import 'package:ecommerce/shared/colors.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  UserAccountsDrawerHeader(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/img/test.jpg"),
                          fit: BoxFit.cover),
                    ),
                    accountName: Text("ali Hassan",
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                        )),
                    accountEmail: Text("ali@yahoo.com"),
                    currentAccountPictureSize: Size.square(99),
                    currentAccountPicture: CircleAvatar(
                        radius: 55,
                        backgroundImage: AssetImage("assets/img/ali.jpg")),
                  ),
                  ListTile(
                      title: Text("Home"),
                      leading: Icon(Icons.home),
                      onTap: () {}),
                  ListTile(
                      title: Text("My products"),
                      leading: Icon(Icons.add_shopping_cart),
                      onTap: () {}),
                  ListTile(
                      title: Text("About"),
                      leading: Icon(Icons.help_center),
                      onTap: () {}),
                  ListTile(
                      title: Text("Logout"),
                      leading: Icon(Icons.exit_to_app),
                      onTap: () {}),
                ],
              ),
              Container(
                margin: EdgeInsets.only(bottom: 12),
                child: Text("Developed by Ali Hassan © 2022",
                    style: TextStyle(fontSize: 16)),
              )
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 76, 141, 95),
          title: Text("Home"),
          actions: [
            Row(
              children: [
                Stack(
                  children: [
                    Positioned(
                      bottom: 24,
                      child: Container(
                          child: Text(
                            "8",
                            style: const TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0)),
                          ),
                          padding: EdgeInsets.all(5),
                          // ignore: prefer_const_constructors
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(211, 164, 255, 193),
                              shape: BoxShape.circle)),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.add_shopping_cart)),
                  ],
                ),
                // ignore: prefer_const_constructors
                Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: Text(
                    "\$ 13",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
