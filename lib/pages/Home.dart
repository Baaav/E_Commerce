// ignore: file_names
// ignore_for_file: prefer_const_constructors, duplicate_ignore, file_names

import 'package:ecommerce/pages/detail.dart';
import 'package:ecommerce/pages/items.dart';
import 'package:ecommerce/shared/colors.dart';
import 'package:flutter/material.dart';
// ignore: duplicate_import
import 'package:ecommerce/pages/detail.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 22),
          child: GridView.builder(
              // ignore: prefer_const_constructors
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 33),
              itemCount: items.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Detail(product: items[index]),
                      ),
                    );
                  },
                  child: GridTile(
                    // ignore: sort_child_properties_last
                    child: Stack(children: [
                      Positioned(
                        top: -3,
                        bottom: -9,
                        right: 0,
                        left: 0,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(55),
                            child: Image.asset(items[index].imagePath)),
                      ),
                    ]),
                    footer: GridTileBar(
// backgroundColor: Color.fromARGB(66, 73, 127, 110),
                      trailing: IconButton(
                          color: Color.fromARGB(255, 62, 94, 70),
                          onPressed: () {},
                          icon: Icon(Icons.add)),

                      leading: Text("\$12.99"),

                      // ignore: prefer_const_constructors
                      title: Text(
                        "",
                      ),
                    ),
                  ),
                );
              }),
        ),
        drawer: Drawer(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  // ignore: prefer_const_constructors
                  UserAccountsDrawerHeader(
                    // ignore: prefer_const_constructors
                    decoration: BoxDecoration(
                      // ignore: prefer_const_constructors
                      image: DecorationImage(
                          // ignore: prefer_const_constructors
                          image: AssetImage("assets/img/test.jpg"),
                          fit: BoxFit.cover),
                    ),
                    // ignore: prefer_const_constructors
                    currentAccountPicture: CircleAvatar(
                        radius: 55,
                        // ignore: prefer_const_constructors
                        backgroundImage: AssetImage("assets/img/ali.jpg")),
                    accountEmail: Text("ali@yahoo.com"),
                    // ignore: prefer_const_constructors
                    accountName: Text("ali Hassan",
                        // ignore: prefer_const_constructors
                        style: TextStyle(
                          // ignore: prefer_const_constructors
                          color: Color.fromARGB(255, 255, 255, 255),
                        )),
                  ),
                  // ignore: duplicate_ignore
                  ListTile(
                      // ignore: prefer_const_constructors
                      title: Text("Home>"),
                      leading: Icon(Icons.home),
                      onTap: () {}),
                  ListTile(
                      title: Text("My product>"),
                      leading: Icon(Icons.add_shopping_cart),
                      onTap: () {}),
                  ListTile(
                      title: Text("About>"),
                      leading: Icon(Icons.help_center),
                      onTap: () {}),
                  ListTile(
                      title: Text("Logout>"),
                      leading: Icon(Icons.exit_to_app),
                      onTap: () {}),
                ],
              ),
              Container(
                margin: EdgeInsets.only(bottom: 12),
                child: Text("Developing by bavlly badry © 2022",
                    style: TextStyle(fontSize: 16)),
              )
            ],
          ),
        ),
        appBar: AppBar(
          actions: [
            Row(
              children: [
                Stack(
                  children: [
                    Positioned(
                      bottom: 24,
                      child: Container(
                          // ignore: sort_child_properties_last
                          child: Text(
                            "8",
                            style: TextStyle(
                                fontSize: 16,
                                color: Color.fromARGB(255, 0, 0, 0)),
                          ),
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(211, 164, 255, 193),
                              shape: BoxShape.circle)),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.add_shopping_cart),
                    ),
                  ],
                ),
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
          backgroundColor: appbarGreen,
          title: Text("Home"),
        ));
  }
}
