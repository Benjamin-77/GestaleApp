import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';
import 'package:gestale_app/main.dart';
import 'all.dart';
import 'hospital.dart';
import 'materials.dart';
import 'home.dart';
import 'infirmiers.dart';
import 'docteurs.dart';
import 'package:gestale_app/components/essentials.dart';


class PersoSoin extends StatelessWidget {
  const PersoSoin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyPersoSoin();
  }
}

class MyPersoSoin extends StatefulWidget {
  const MyPersoSoin({Key? key}) : super(key: key);

  @override
  State<MyPersoSoin> createState() => _MyPersoSoinState();
}

class _MyPersoSoinState extends State<MyPersoSoin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MakeAppBar(),
      drawer: MakeDrawer(context),
      bottomNavigationBar:MakeBottomNavigationBar(context, 1),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(30),
          child: Column(
            children: [
              InkWell(
                child: Column(
                  children: [
                    SizedBox(height:50,),
                    Container(
                      decoration: BoxDecoration(
                        color: blanc,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            spreadRadius: 3,
                            blurRadius: 3,
                            offset: Offset(1, 0), // Shadow position
                          ),
                        ],
                      ),
                      width: MediaQuery.of(context).size.width*0.4,
                      height: MediaQuery.of(context).size.width*0.3,
                      padding: EdgeInsets.all(MediaQuery.of(context).size.width*0.038),
                      child: SvgPicture.asset("assets/images/svg/infirmier.svg"),
                    ),
                    SizedBox(height: 20,),
                    Text("Infirmiers", style: TextStyle(fontWeight: FontWeight.w900, fontFamily: "zenk",fontSize: 22),textAlign: TextAlign.center,)
                  ],
                ),
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Infirmiers()),
                  );
                },
              ),
              SizedBox(height: 50,),
              InkWell(
                child: Column(
                  children: [
                    SizedBox(height:50,),
                    Container(
                      decoration: BoxDecoration(
                        color: blanc,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            spreadRadius: 3,
                            blurRadius: 3,
                            offset: Offset(1, 0), // Shadow position
                          ),
                        ],
                      ),
                      width: MediaQuery.of(context).size.width*0.4,
                      height: MediaQuery.of(context).size.width*0.3,
                      padding: EdgeInsets.all(MediaQuery.of(context).size.width*0.038),
                      child: SvgPicture.asset("assets/images/svg/docteur.svg"),
                    ),
                    SizedBox(height: 20,),
                    Text("Docteurs & Spécialiste", style: TextStyle(fontWeight: FontWeight.w900, fontFamily: "zenk",fontSize: 22),textAlign: TextAlign.center,)
                  ],
                ),
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Docteurs()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

