import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'home.dart';
import 'package:gestale_app/components/essentials.dart';



class Docteurs extends StatelessWidget {
  const Docteurs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyDocteurs();
  }
}

class MyDocteurs extends StatefulWidget {
  const MyDocteurs({Key? key}) : super(key: key);

  @override
  State<MyDocteurs> createState() => _MyDocteursState();
}

class _MyDocteursState extends State<MyDocteurs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MakeAppBar(),
      drawer: MakeDrawer(context),
      bottomNavigationBar: MakeBottomNavigationBar(context, 1),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Home()),
          );
        },
        backgroundColor: blue,
        child: SvgPicture.asset(
          "assets/images/svg/add.svg",
          color: blanc,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      body: Column(
        children: [
          MakeTitle(context, "Docteurs & Spécialistes"),
          SizedBox(
            height: 20,
          ),

          Center(
            child: Container(
              height: 50,
              width: MediaQuery.of(context).size.width * 0.85,
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 7),
              child: Stack(
                children: [
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width * 0.85,
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 7),
                    decoration: BoxDecoration(
                      color: blanc,
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          spreadRadius: 2,
                          blurRadius: 2,
                          offset: Offset(0, 0), // Shadow position
                        ),
                      ],
                    ),

                  ),
                  Center(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.03),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(child: Center(
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 1, vertical: 1),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Recherchez ici ...',

                                ),
                              ),
                            ),
                          ),),
                          SizedBox(width: MediaQuery.of(context).size.width*0.01,),
                          InkWell(
                            child: SvgPicture.asset("assets/images/svg/search.svg"),
                          ),

                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 30),

          Expanded(child: ListView.builder(
            itemBuilder: (BuildContext, index){
              return Column(
                children: [
                  MakeMaterial(context, "Robert FATOU", "Qualification", "assets/images/jpeg/medecine1.jpg",blue),
                  SizedBox(height: 20,),
                ],
              );
            },
            itemCount: 20,
            shrinkWrap: true,
            padding: EdgeInsets.symmetric(vertical: 10,horizontal: 45),
            scrollDirection: Axis.vertical,
          )
          ),
        ],
      ),

    );
  }
}

