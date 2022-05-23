import 'dart:io';
import 'dart:ui';

import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';
import 'package:gestale_app/main.dart';
import 'package:gestale_app/vues/services.dart';
import 'all.dart';
import 'hospital.dart';
import 'materials.dart';
import 'rh.dart';
import 'package:gestale_app/components/essentials.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (Platform.isAndroid) {
      SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
          systemNavigationBarColor: Color(0xff237ABF),
          systemNavigationBarIconBrightness: Brightness.light));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MakeAppBar(),
      drawer: MakeDrawer(context),
      bottomNavigationBar: MakeBottomNavigationBar(context, 0),
      body: ListView(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.6,
            width: double.infinity,
            child: Carousel(
              dotSize: 4,
              animationDuration: const Duration(seconds: 1),
              autoplayDuration: const Duration(seconds: 10),
              images: [
                Image.asset(
                  'assets/images/jpeg/medecine1.jpg',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'assets/images/jpeg/medecine2.jpg',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'assets/images/jpeg/medecine3.jpg',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'assets/images/jpeg/medecine4.jpg',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'assets/images/jpeg/chirurgie2.jpg',
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
          MakeTitle(context, "Nos Services"),
          SizedBox(height: 30,),
          Container(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MakeService(context, "Chirurgie", "assets/images/jpeg/medecine3.jpg"),
                    MakeService(context, "Ophtamologie", "assets/images/jpeg/medecine4.jpg"),
                  ],
                ),
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MakeService(context, "Chirurgie", "assets/images/jpeg/medecine3.jpg"),
                    MakeService(context, "Ophtamologie", "assets/images/jpeg/medecine4.jpg"),
                  ],
                ),
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MakeService(context, "Chirurgie", "assets/images/jpeg/medecine3.jpg"),
                    MakeService(context, "Ophtamologie", "assets/images/jpeg/medecine4.jpg"),
                  ],
                ),
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MakeService(context, "Chirurgie", "assets/images/jpeg/medecine3.jpg"),
                    MakeService(context, "Ophtamologie", "assets/images/jpeg/medecine4.jpg"),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 30,),
          InkWell(
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Voir plus", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600, color:rose),),
                  SizedBox(width: 20,),
                  Icon(Icons.navigate_next_rounded, color: rose,),
                ],
              ),
            ),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Services()),
                );
              }

          ),
          SizedBox(height: 40,),
          MakeTitle(context, "À propos de nous"),
          SizedBox(height: 30,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width* 0.07),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.1),
                  child: Column(
                    children: [
                      MakeInfo(context, "+56948234", Icons.phone, rose),
                      SizedBox(height: 20,),
                      MakeInfo(context, "emailhopital@gmail.com", Icons.mail_outline_rounded, rose),
                      SizedBox(height: 20,),
                      MakeInfo(context, "Bp:345", Icons.post_add, rose),
                      SizedBox(height: 20,),
                      MakeInfo(context, "Abomey-Calavi, Kpota", Icons.location_on_outlined, rose),
                      SizedBox(height: 20,),
                    ],
                  ),
                ),
                MakeTexte("ciudouaibeoufhbzoerufbhzoufbvhfu euvozibvzv zourbihoidf czoufhbvozrutbvosufbv zoufhbrvozurbvuzo rnzrigoi rto urtvziurp viuv orhozivyughovizutrbozvubhfouvh rbouhbvouzfbovuz bhrvouzbrou vzbvu zbruovbzo"),
                SizedBox(height: 70,),
              ],

            ),
          ),
        ],
      ),
    );
  }
}
