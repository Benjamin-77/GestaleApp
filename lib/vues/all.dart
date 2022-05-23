import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';
import 'package:gestale_app/main.dart';
import 'package:gestale_app/vues/docteurs.dart';
import 'package:gestale_app/vues/infirmiers.dart';
import 'package:gestale_app/vues/patients.dart';
import 'package:gestale_app/vues/services.dart';

import 'hospital.dart';
import 'materials.dart';
import 'rh.dart';
import 'home.dart';
import 'services.dart';

import 'package:gestale_app/components/essentials.dart';

class All extends StatelessWidget {
  const All({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyAll();
  }
}

class MyAll extends StatefulWidget {
  const MyAll({Key? key}) : super(key: key);

  @override
  State<MyAll> createState() => _MyAllState();
}

class _MyAllState extends State<MyAll> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MakeAppBar(),
      drawer: MakeDrawer(context),
      bottomNavigationBar:MakeBottomNavigationBar(context, 2),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 20,horizontal: MediaQuery.of(context).size.width*0.05),
        children: [
          SizedBox(height: 25,),
          InkWell(child: MakeAlloption(context, "assets/images/svg/hopital.svg", "Mon hôpital"),
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Hospital()),
              );
            },),
          SizedBox(height: 25,),
          InkWell(child: MakeAlloption(context, "assets/images/svg/calendar2.svg", "Calendriers"),
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Services()),
              );
            },),
          SizedBox(height: 25,),
          InkWell(child: MakeAlloption(context, "assets/images/svg/patient.svg", "Patients"),
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Patients()),
              );
            },),

          SizedBox(height: 25,),
          InkWell(child: MakeAlloption(context, "assets/images/svg/docteur.svg", "Docteurs & Spécialistes"),
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Docteurs()),
              );
            },),

          SizedBox(height: 25,),
          InkWell(child: MakeAlloption(context, "assets/images/svg/infirmier.svg", "Infirmiers"),
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Infirmiers()),
              );
            },),

          SizedBox(height: 25,),
          InkWell(child: MakeAlloption(context, "assets/images/svg/service.svg", "Services"),
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Services()),
              );
            },),

          SizedBox(height: 25,),
          InkWell(child: MakeAlloption(context, "assets/images/svg/materials.svg", "Matériels"),
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Materials()),
              );
            },),

          SizedBox(height: 25,),
        ],
      ),
    );
  }
}

