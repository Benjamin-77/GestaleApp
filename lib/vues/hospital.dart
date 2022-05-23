import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';
import 'package:gestale_app/main.dart';
import 'all.dart';

import 'materials.dart';
import 'rh.dart';
import 'home.dart';
import 'package:gestale_app/components/essentials.dart';


class Hospital extends StatelessWidget {
  const Hospital({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyHospital();
  }
}

class MyHospital extends StatefulWidget {
  const MyHospital({Key? key}) : super(key: key);

  @override
  State<MyHospital> createState() => _MyHospitalState();
}

class _MyHospitalState extends State<MyHospital> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MakeAppBar(),
      drawer: MakeDrawer(context),
      bottomNavigationBar:MakeBottomNavigationBar(context, 4),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Home()),
          );
        },
        backgroundColor: blue,
        child: SvgPicture.asset("assets/images/svg/edit.svg",color: blanc,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Column(
        children: [
          MakeTitle(context, "Mon hôpital"),
          SingleChildScrollView(
            child: Column(
              children: [
                Center(
                  child: Column(
                    children: [
                      SizedBox(height: 20,),
                      Text("Nom de l'hopital", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: blue),),
                      SizedBox(height: 20,),
                      SvgPicture.asset("assets/images/logo/logoSVG.svg"),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: MediaQuery.of(context).size.width*0.1),
                  child: Column(
                    children: [
                      MakeInfo(context, "456123998", Icons.phone_in_talk_outlined, blue),
                      SizedBox(height: 20,),
                      MakeInfo(context, "emaildelhopital@gmail.com", Icons.mail_outline, blue),
                      SizedBox(height: 20,),
                      MakeTexte("dbjveovbeore veivoi prigjbrfgb fvr oi igro ivnfv ghnrtg nv risoi bv rnvi oribvnz rngoubfgoivn ig h eogiueb fgiveoi guoie  hipfvisbdfbvr  fhvpiguhie vidjf v piguh idfnveprigne ignvifovieu hvno hvofiuv obifbvoi rubiufoiufhv ogbvoiugf o p iu"),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

