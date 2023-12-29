import 'package:flutter/material.dart';

class profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.person),
        title: Text('Profile'),
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
            "Group 43",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30),
          ),
          SizedBox(height: 5),
          Text(
            "IETP Project ",
            style: TextStyle(color: Colors.grey, fontSize: 20),
          ),
          SizedBox(height: 5),
          ListTile(
            leading: Icon(Icons.email),
            title: Text("AASTU 4th Year "),
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text('+251-912-34-56-78'),
          ),
          ListTile(
            leading: Icon(Icons.location_on),
            title: Text('Addis Ababa, Ethiopia'),
          ),
        ],
      ),
    );
  }
}
