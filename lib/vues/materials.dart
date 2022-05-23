import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'home.dart';
import 'package:gestale_app/components/essentials.dart';

class Materials extends StatelessWidget {
  const Materials({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyMaterials();
  }
}

class MyMaterials extends StatefulWidget {
  const MyMaterials({Key? key}) : super(key: key);

  @override
  State<MyMaterials> createState() => _MyMaterialsState();
}

class _MyMaterialsState extends State<MyMaterials> {
  final _formKey = GlobalKey<FormState>();
  var _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MakeAppBar(),
      drawer: MakeDrawer(context),
      bottomNavigationBar: MakeBottomNavigationBar(context, 3),
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
          MakeTitle(context, "Matériels"),
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
                  MakeMaterial(context, "Lits de malades", 78.toString(), "assets/images/jpeg/chirurgie2.jpg",blue),
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
