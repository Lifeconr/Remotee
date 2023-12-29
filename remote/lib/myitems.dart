import 'package:ecommerce/signin.dart';
import 'package:ecommerce/signup.dart';
import 'package:flutter/material.dart';

class myitems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.shopping_cart_outlined),
        title: Text('My items'),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => signin()));
                },
                child: Container(
                  height: 250,
                  decoration: BoxDecoration(
                      // ignore: prefer_const_constructors
                      gradient: LinearGradient(colors: [
                    Color.fromARGB(255, 221, 226, 230),
                    Color.fromARGB(255, 158, 190, 229),
                    Color.fromARGB(255, 87, 139, 192),
                  ])),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage('asset/logoo.png'),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Setting",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => signup()));
                },
                child: Container(
                  height: 250,
                  decoration: BoxDecoration(
                      // ignore: prefer_const_constructors
                      gradient: LinearGradient(colors: [
                    Color.fromARGB(255, 221, 226, 230),
                    Color.fromARGB(255, 158, 190, 229),
                    Color.fromARGB(255, 87, 139, 192),
                  ])),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage('asset/logoo.png'),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Create Account",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
