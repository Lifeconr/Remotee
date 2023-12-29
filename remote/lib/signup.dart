import 'package:ecommerce/home.dart';
import 'package:ecommerce/main.dart';
import 'package:flutter/material.dart';

class signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var materialApp = MaterialApp(
      title: '',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: ''),
    );
    return materialApp;
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  get child => null;
  bool? ischecked = false;
  //bool checkBoxValue=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottomOpacity: 0,
        elevation: 0,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(0),
            child: Container(
              height: 100,
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
              child: Column(children: [
                const SizedBox(
                  height: 10,
                ),
                const SizedBox(height: 10),
                const Text(
                  'Remote App',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  'Transform Your Future With the Power of our Controller App!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
              ]),
            ),
          ),
          const SizedBox(height: 3),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Form(
              child: Column(
                children: newMethod,
              ),
            ),
          ),
          //  const SizedBox(height: 3),
          Padding(
              padding: const EdgeInsets.all(4),
              child: Row(
                children: <Widget>[
                  Checkbox(
                    value: ischecked,
                    onChanged: (newBool) {
                      setState(() {
                        ischecked = newBool;
                      });
                    },
                  ),
                  Text("Remember Me"),
                ],
              )),
          Padding(
            padding: const EdgeInsets.all(60),
            child: MaterialButton(
              minWidth: double.infinity,
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => MyApp()));
              },
              color: Colors.blue,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              child: Text(
                'Signup',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> get newMethod {
    return [
      TextFormField(
        keyboardType: TextInputType.name,
        decoration: InputDecoration(
          labelText: 'Username',
          hintText: 'Username',
          prefixIcon: const Icon(Icons.person),
        ),
        onChanged: (String Value) {},
        validator: (value) {
          return value!.isEmpty ? 'Please Enter Your username' : null;
        },
      ),
      TextFormField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          labelText: 'Email',
          hintText: 'Email',
          prefixIcon: const Icon(Icons.email),
        ),
        onChanged: (String Value) {},
        validator: (value) {
          return value!.isEmpty ? 'Please Enter Your Email' : null;
        },
      ),
      const SizedBox(height: 5),
      TextFormField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          labelText: 'Password',
          hintText: 'Password',
          prefixIcon: const Icon(Icons.password),
        ),
      ),
      TextFormField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          labelText: 'Confirm Password',
          hintText: 'Confirm Password ',
          prefixIcon: const Icon(Icons.password),
        ),
      ),
      TextFormField(
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(
          labelText: 'Phonenumber',
          hintText: 'Phonenumber',
          prefixIcon: const Icon(Icons.phone),
        ),
        onChanged: (String Value) {},
        validator: (value) {
          return value!.isEmpty ? 'Please Enter Your Phonenumber' : null;
        },
      ),
    ];
  }
}
