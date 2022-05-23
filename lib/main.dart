import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gestale_app/vues/initial.dart';
import 'dart:async';
import 'vues/home.dart';

void main() {
  runApp(const GestaleApp());
}

class GestaleApp extends StatelessWidget {
  const GestaleApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Onboading(),
    );
  }
}

class Onboading extends StatefulWidget {
  const Onboading({Key? key}) : super(key: key);

  @override
  State<Onboading> createState() => _OnboadingState();
}

class _OnboadingState extends State<Onboading> {

  route() {
    Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => Home(),
    )
    );
  }

  startTime() async {
    var duration = new Duration(seconds: 6);
    return new Timer(duration, route);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:SvgPicture.asset('assets/images/logo/logoSVG.svg',
        ),
      ),
    );
  }
}
