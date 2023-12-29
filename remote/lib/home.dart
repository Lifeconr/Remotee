import 'package:ecommerce/intro.dart';
import 'package:flutter/material.dart';

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.lightbulb),
        title: Text('Remote App'),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: [
              const SizedBox(height: 30),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => intro()));
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
                      Text(
                        "Explore ",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage('asset/logoo.png'),
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => intro()));
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
                      Text(
                        "Information",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage('asset/logoo.png'),
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => intro()));
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
                      Text(
                        "About the app",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage('asset/logoo.png'),
                      ),
                      const SizedBox(height: 10),
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
