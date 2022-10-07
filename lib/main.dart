import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:netflix_clone/chooseProfile.dart';
import 'package:netflix_clone/home.dart';
import 'package:netflix_clone/navigation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Netflix Clone',
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  void _navigateToHome() async {
    await Future.delayed(Duration(milliseconds: 3000), () {});
    Navigator.push(context, MaterialPageRoute(
        builder: (context) =>  ChooseProfile()
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Image.asset("images/netflixfull_logo.png", width: 200,),
      ),
    );
  }
}
