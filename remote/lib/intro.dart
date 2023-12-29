import 'package:flutter/material.dart';

class intro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.person),
        title: Text('Maintenance'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 90,
            backgroundImage: AssetImage('asset/logoo.png'),
          ),
          SizedBox(height: 20),
          Text(
            "This page is in progress",
            style: TextStyle(color: Colors.grey, fontSize: 20),
          ),
          SizedBox(height: 5),
        ],
      ),
    );
  }
}
