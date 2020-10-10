import 'package:flutter/material.dart';
import 'package:twitter_ui_project/twitter.dart';

class Loading extends StatelessWidget {
  Future getData(context) async {
    await Future.delayed(Duration(seconds: 3));
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Twitter()));
  }

  @override
  Widget build(BuildContext context) {
    getData(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image(
          image: AssetImage('assets/twitter.png'),
          height: 100,
          width: 100,
        ),
      ),
    );
  }
}
