import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  List<String> images = [
    "asset/upp.png",
    "asset/down.png",
    "asset/right.png",
    "asset/left.png",
    "asset/bluetoothikon.png",
  ];

  List<String> des = [
    " Up",
    "Down",
    "Right",
    "Left",
    "Bluetooth",
  ];

  Widget CustomCard(String langname, String image, String des) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 20.0,
        horizontal: 30.0,
      ),
      child: InkWell(
        onTap: () {},
        child: Material(
          color: Color.fromARGB(255, 253, 253, 253),
          elevation: 10.0,
          borderRadius: BorderRadius.circular(25.0),
          child: Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10.0,
                  ),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(100.0),
                    child: Container(
                      // changing from 200 to 150 as to look better
                      height: 150.0,
                      width: 150.0,
                      child: ClipOval(
                        child: Image(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            image,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    langname,
                    style: const TextStyle(
                      fontSize: 20.0,
                      color: Color.fromARGB(255, 22, 22, 22),
                      fontFamily: "Quando",
                      fontWeight: FontWeight.w700,
                      backgroundColor: Colors.white,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    des,
                    style: const TextStyle(
                        fontSize: 18.0,
                        color: Color.fromARGB(255, 37, 37, 37),
                        fontFamily: "Quando"),
                    maxLines: 5,
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          " Remote App",
          style: TextStyle(
            fontFamily: "Quando",
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          CustomCard("Up", images[0], des[0]),
          CustomCard("Down", images[1], des[1]),
          CustomCard("Right", images[2], des[2]),
          CustomCard("Left", images[3], des[3]),
          CustomCard("Bluetooth", images[4], des[4]),
        ],
      ),
    );
  }
}
