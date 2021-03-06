import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'patients.dart';
import 'persosoin.dart';

import 'package:gestale_app/components/essentials.dart';


class Rh extends StatelessWidget {
  const Rh({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyRh();
  }
}

class MyRh extends StatefulWidget {
  const MyRh({Key? key}) : super(key: key);

  @override
  State<MyRh> createState() => _MyRhState();
}

class _MyRhState extends State<MyRh> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MakeAppBar(),
      drawer: MakeDrawer(context),
      bottomNavigationBar:MakeBottomNavigationBar(context, 1),
      body: ListView(
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
                    child: SvgPicture.asset("assets/images/svg/patient.svg"),
                  ),
                  SizedBox(height: 20,),
                  Text("Patients", style: TextStyle(fontWeight: FontWeight.w900, fontFamily: "zenk",fontSize: 22),textAlign: TextAlign.center,)
                ],
              ),

              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Patients()),
                );
              },
            ),
            SizedBox(height: 50,),
            InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PersoSoin()),
                );
              },
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
                    child: SvgPicture.asset("assets/images/svg/persosoin.svg"),
                  ),
                  SizedBox(height: 20,),
                  Text("Personnel de soin", style: TextStyle(fontWeight: FontWeight.w900, fontFamily: "zenk",fontSize: 22),textAlign: TextAlign.center,)
                ],
              ),
            ),

        ],
      ),
    );
  }
}

