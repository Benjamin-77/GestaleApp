import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';
import 'package:gestale_app/main.dart';
import 'package:gestale_app/vues/home.dart';
import 'all.dart';
import 'hospital.dart';
import 'materials.dart';
import 'rh.dart';
import 'package:gestale_app/components/essentials.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';


class Initial extends StatelessWidget {
  const Initial({Key? key,required this.num}) : super(key: key);
  final int num;

  @override
  Widget build(BuildContext context) {
    return MyInitial(numpage: num,);
  }
}

class MyInitial extends StatefulWidget {
  const MyInitial({Key? key,required this.numpage}) : super(key: key);
  final  int numpage;

  @override
  State<MyInitial> createState() => _MyInitialState();
}

class _MyInitialState extends State<MyInitial> {

  int page =0;
  final pages=[Home(),Rh(),All(),Materials(),Hospital()];
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    page= widget.numpage;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[page],
      bottomNavigationBar: ConvexAppBar(
        backgroundColor:  Color(0xffffffff),
        color:  Color(0xff237ABF),
        activeColor: Color(0xffE6007E),
        items: [
          TabItem(icon:Icons.home_outlined),
          TabItem(icon: Icons.people_alt_outlined),
          TabItem(icon: Icons.pages),
          TabItem(icon: Icons.work_outline_rounded),
          TabItem(icon: Icons.local_hospital_outlined),
        ],
        initialActiveIndex: page,//optional, default as 0
        onTap: (int i ){
          setState(() {
            page=i;
          });
        },
      ),
    );
  }
}

