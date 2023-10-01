import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'register.dart';
import 'UserAccountSettings.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void onPressed(){
     Get.offAll(() => const Register());
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.settings,
              color: Colors.white,
            ),
            onPressed: () {
              Get.offAll(()=> UserAccountSettings());
            },
          )
        ],
      ),
      body: Column(
        children: [
          const SizedBox(height: 30),
          const SizedBox(height: 30),
          Text('             das'),
          TextButton(onPressed: onPressed, child: 
            const Text('Oi....take me back to login')
          ),
          const SizedBox(height: 30),
          const SizedBox(height: 30)
        ],
      ),
     
    );
  }
}