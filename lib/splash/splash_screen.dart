import 'package:flutter/material.dart';
import 'package:zapfitt/home_page.dart';
import 'package:splashscreen/splashscreen.dart';
import 'login_page.dart';
import 'sign_up_page.dart';


class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {


  @override
  Widget build(BuildContext context) {
    return SplashScreen(
        seconds:2,
        navigateAfterSeconds: LoginPage(),
        title: new Text('Zapfit'),
        //image: new Image.asset('screenshot.png'),
        backgroundColor: Colors.yellow,
        styleTextUnderTheLoader: new TextStyle(),
        // photoSize: 100.0,
        loaderColor: Colors.red
    );
  }
}
