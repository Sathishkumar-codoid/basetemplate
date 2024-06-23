import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:templateproject/Screen/Login/LoginScreen.dart';
import 'package:templateproject/Utils/CommonUI.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    navigationPage();
  }
  navigationPage(){
    Future.delayed(const Duration(seconds: 3),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const Loginscreen()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            
            CommonUI().text(text: "Template Project")

          ],
        ),
      ),

    );
  }
}
