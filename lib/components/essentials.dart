import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';
import 'package:gestale_app/main.dart';
import 'package:gestale_app/vues/all.dart';
import 'package:gestale_app/vues/home.dart';
import 'package:gestale_app/vues/hospital.dart';
import 'package:gestale_app/vues/initial.dart';
import 'package:gestale_app/vues/materials.dart';
import 'package:gestale_app/vues/rh.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

const blue = Color(0xff237ABF);
const bluepacity = Color(0xffA7CAE5);
const rose = Color(0xffE6007E);
const grisClaire = Color(0xffF5F5F5);
const grisTexte = Color(0xff272727);
const vert = Color(0xff169539);
const blanc = Color(0xffffffff);


AppBar MakeAppBar(){
  return AppBar(
    leading: Builder(
      builder: (context) => IconButton(
        icon: SvgPicture.asset('assets/images/svg/menu.svg'),
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
      ),
    ),
    backgroundColor: Color(0xff237ABF),
    toolbarHeight: 70,
    title: SvgPicture.asset('assets/images/logo/logoBBSVG.svg',height: 70,),
    centerTitle: true,
  );
}

Drawer MakeDrawer(BuildContext context){
  return Drawer(
    child: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height:50),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width*0.25,
                height: MediaQuery.of(context).size.width*0.25,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/jpeg/medecine1.jpg'),
                    fit: BoxFit.cover,
                  ),
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Color(0xff237ABF), //                   <--- border color
                    width: 7.0,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      spreadRadius: 5,
                      blurRadius: 5,
                      offset: Offset(1, 0), // Shadow position
                    ),
                  ],
                ),

              ),
              SizedBox(height:20),
              Text("Frédrich SANSOMA", style: TextStyle(fontFamily: 'ubuntu', fontWeight: FontWeight.w900),),
              SizedBox(height:20),
            ],
          ),
          SizedBox(height:20),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(Icons.local_phone_rounded, color: blue,),
                    SizedBox(width: 10,),
                    Text("(+229) 569 478 15",style: TextStyle(fontFamily: 'zenk', fontWeight: FontWeight.w200),),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Icon(Icons.alternate_email_outlined, color: blue,),
                    SizedBox(width: 10,),
                    Text("exampleemail@gmail.com",style: TextStyle(fontFamily: 'zenk', fontWeight: FontWeight.w200),),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Icon(Icons.location_on_outlined, color: blue,),
                    SizedBox(width: 10,),
                    Text("Rue 345 : Vond Decrush",style: TextStyle(fontFamily: 'zenk', fontWeight: FontWeight.w200),),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height:30),
          Container(
            height: 10,
            decoration: BoxDecoration(
              color: rose,
            ),
          ),
          SizedBox(height:30),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                InkWell(
                  child:Row(
                    children: [
                      Icon(Icons.home_filled, color: rose, size: 35,),
                      SizedBox(width: 10,),
                      Text("Accueil", style: TextStyle(fontFamily: 'ubuntu',fontSize: 16,fontWeight: FontWeight.w500),),
                    ],
                  ),
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Home()),
                    );
                  },
                ),
                SizedBox(height: 20,),
                InkWell(
                  child:Row(
                    children: [
                      Icon(Icons.people_alt_outlined, color: rose, size: 35,),
                      SizedBox(width: 10,),
                      Text("Patients & Personnel", style: TextStyle(fontFamily: 'ubuntu',fontSize: 16,fontWeight: FontWeight.w500),),
                    ],
                  ),
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Rh()),
                    );
                  },
                ),
                SizedBox(height: 20,),
                InkWell(
                  child:Row(
                    children: [
                      Icon(Icons.pages, color: rose, size: 35,),
                      SizedBox(width: 15,),
                      Text("Tout", style: TextStyle(fontFamily: 'ubuntu',fontSize: 16,fontWeight: FontWeight.w500),),
                    ],
                  ),
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const All()),
                    );
                  },
                ),
                SizedBox(height: 20,),
                InkWell(
                  child:Row(
                    children: [
                      Icon(Icons.work_outline_rounded, color: rose, size: 35,),
                      SizedBox(width: 15,),
                      Text("Matériels", style: TextStyle(fontFamily: 'ubuntu',fontSize: 16,fontWeight: FontWeight.w500),),
                    ],
                  ),
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Materials()),
                    );
                  },
                ),
                SizedBox(height: 20,),
                InkWell(
                  child:Row(
                    children: [
                      Icon(Icons.local_hospital_outlined, color: rose, size: 35,),
                      SizedBox(width: 15,),
                      Text("Mon hôpital", style: TextStyle(fontFamily: 'ubuntu',fontSize: 16,fontWeight: FontWeight.w500),),
                    ],
                  ),
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Hospital()),
                    );
                  },
                ),
                SizedBox(height: 40,),
                InkWell(
                  child:Row(
                    children: [
                      Icon(Icons.settings, color: Color(0xffa1a1a1), size: 35,),
                      SizedBox(width: 15,),
                      Text("Mon compte", style: TextStyle(fontFamily: 'ubuntu',fontSize: 16,fontWeight: FontWeight.w500),),
                    ],
                  ),
                  onTap: (){
                    /*Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Rh()),
                  );*/
                  },
                ),
                SizedBox(height: 40,),
                InkWell(
                  child:Row(
                    children: [
                      Icon(Icons.logout, color: Color(0xffa1a1a1), size: 35,),
                      SizedBox(width: 15,),
                      Text("Se déconnecter", style: TextStyle(fontFamily: 'ubuntu',fontSize: 16,fontWeight: FontWeight.w500),),
                    ],
                  ),
                  onTap: (){
                    /*Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Rh()),
                  );*/
                  },
                ),
              ],
            ),
          ),
          SizedBox(height:30),

        ],
      ),
    ),
  );
}

ConvexAppBar MakeBottomNavigationBar(BuildContext context, int a){
  return ConvexAppBar(
    backgroundColor:  blanc,
    color:  blue,
    activeColor: rose,
    items: [
      TabItem(icon:Icons.home_outlined),
      TabItem(icon: Icons.people_alt_outlined),
      TabItem(icon: Icons.pages),
      TabItem(icon: Icons.work_outline_rounded),
      TabItem(icon: Icons.local_hospital_outlined),
    ],
    initialActiveIndex: a,//optional, default as 0
    onTap: (int i ){
      if(i==1){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Rh()),
        );
      }else if(i==2){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const All()),
        );
      }else if(i==3){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Materials()),
        );
      }else if(i==0){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Home()),
        );
      }else{
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Hospital()),
        );
      }
    },
  );
}

Container MakeTitle(BuildContext context,String titre){
  return Container(
    height: MediaQuery.of(context).size.height * 0.07,
    child: Center(
      child: Stack(children: [
        Positioned(
          left: -MediaQuery.of(context).size.width * 0.025,
          child: Container(
            height: MediaQuery.of(context).size.height * 0.07,
            width: MediaQuery.of(context).size.width * 1.05,
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.01,
                    width: MediaQuery.of(context).size.width * 1.05,
                    decoration: BoxDecoration(
                      color: bluepacity,
                    ),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.013,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.053,
                    width: MediaQuery.of(context).size.width * 1.05,
                    decoration: BoxDecoration(
                      color: bluepacity,
                      borderRadius: BorderRadius.vertical(
                          bottom: Radius.circular(70)),
                      border: BorderDirectional(
                          bottom: BorderSide(
                              width: 10, color: bluepacity)),
                    ),
                  ),
                ),
                Positioned(
                  top:  MediaQuery.of(context).size.height * 0.006,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.053,
                    width: MediaQuery.of(context).size.width * 1.05,
                    decoration: BoxDecoration(
                      color: blue,
                      borderRadius: BorderRadius.vertical(
                          bottom: Radius.circular(70)),
                      border: BorderDirectional(
                          bottom: BorderSide(
                              width: 10, color: bluepacity)),
                    ),
                  ),
                ),
                Center(
                  child: Text(titre,style: TextStyle(fontWeight: FontWeight.w400, fontSize: 22,color: Colors.white),),
                ),
              ],
            ),
          ),
        ),
      ]),
    ),
  );
}

Container MakeService(BuildContext context,String titre,String image){
  return Container(
    width: MediaQuery.of(context).size.width*0.4,
    height: MediaQuery.of(context).size.width*0.3,
    decoration: BoxDecoration(
      color: Colors.white,
      border: Border.all(width: 5, color: grisClaire),
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
    child:Column(
      children: [
        Container(
          height:  MediaQuery.of(context).size.width*0.22,
          width:  MediaQuery.of(context).size.width*0.4,
          decoration: BoxDecoration(
            border: BorderDirectional(bottom: BorderSide(width: 5,color: grisClaire)),
          ),
          child: Image.asset(image, fit: BoxFit.cover,),
        ),
        Expanded(child: Center(
          child: Text(titre, style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
        ),),

      ],
    ),
  );
}

Row MakeInfo(BuildContext context, String titre, IconData icon, Color mycolor ){
  return Row(
    children: [
      Icon(icon, color: mycolor,size: 35,),
      SizedBox(width: 15,),
      Text(titre, style: TextStyle(fontFamily: "zenk",fontSize: 20),),
    ],
  );
}

Text MakeTexte(String texte){
  return Text(texte, style: TextStyle(fontSize: 17, fontFamily: "zenk",),textAlign: TextAlign.justify,);
}

Row MakeMaterial(BuildContext context, String nom, String nombre,String image,Color couleur){
  return Row(
    children: [
      Container(
        width:90,
        height: 90,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
          shape: BoxShape.circle,
          border: Border.all(
            color: grisClaire, //                   <--- border color
            width: MediaQuery.of(context).size.width*0.007,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              spreadRadius: 1,
              blurRadius: 1,
              offset: Offset(0, 0), // Shadow position
            ),
          ],
        ),

      ),
      SizedBox(width: 25,),
      Expanded(child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(nom, style: TextStyle(fontSize: 19,color: grisTexte),),
          SizedBox(height: 10,),
          Text(nombre.toString(), style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700,color: couleur),),
        ],
      ),),

    ],
  );
}

InkWell MakeAlloption(BuildContext context, String image, String titre){
  return InkWell(
    child: Container(
      height: 80,
      decoration: BoxDecoration(
        color: blanc,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            spreadRadius: 1,
            blurRadius: 1,
            offset: Offset(0, 0), // Shadow position
          ),
        ],
        border: Border.all(width: 6,color: grisClaire),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(width: MediaQuery.of(context).size.width*0.05,),
          SvgPicture.asset(image,height: 50,color: blue,),
          SizedBox(width: MediaQuery.of(context).size.width*0.05,),
          Text(titre,style: TextStyle(fontSize: 18,fontWeight: FontWeight.w900,fontFamily: "zenk"),),
        ],
      ),
    ),
  );
}

