import 'package:business_bank/Constants/firebase_auth_constants.dart';
import 'package:business_bank/Controller/auth_controller.dart';
import 'package:flutter/material.dart';
import 'dart:developer';
import 'package:business_bank/screens/home.dart';
import 'package:get/get.dart';

class UserAccountSettings extends StatefulWidget {
  const UserAccountSettings({Key? key}) : super(key: key);

  @override
  State<UserAccountSettings> createState() => _UserAccountSettingsState();
}

class _UserAccountSettingsState extends State<UserAccountSettings> {
  void logout(){
    //Ask second time
    log('logoiut');
    authController.signOut();
  }
  //final TextEditingController _emailController = TextEditingController();
  //final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    log('we are here');
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {Get.offAll(() => const Home());}, icon: const Icon(Icons.arrow_back)),
        title: const Text("Settings"),
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child:  Column(
            children: [
              const SizedBox(height: 30),
              SizedBox(
                width: 120, height: 120,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(80),child: const Image(image: AssetImage("assets/image.png"))
                ) ,
              ),
              const SizedBox(height: 10,),
              const Text("User Name",style: TextStyle(fontSize: 19)),
              const Text("email Id",style: TextStyle(fontSize: 17)),
              const SizedBox(height: 20,),
              SizedBox(width: 200,child: ElevatedButton(style: ButtonStyle(backgroundColor: MaterialStateProperty.resolveWith((states) => Colors.grey)),child: const Text("Edit Profile"), onPressed:() {
                //Edit Profile Button
              }, ),),
              SizedBox(height: 20,),
              SizedBox(width: 200,child: ElevatedButton(style: ButtonStyle(backgroundColor: MaterialStateProperty.resolveWith((states) => Colors.white)),child: const Text("Logout",style: TextStyle(color: Colors.red),), onPressed:() {
                //Logout Button
                logout();
              }, ),),
            ]
          ),
        ),
      ),
    );
  }
}