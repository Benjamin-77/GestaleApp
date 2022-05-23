import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'home.dart';
import 'package:gestale_app/components/essentials.dart';


class Services extends StatelessWidget {
  const Services({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyServices();
  }
}

class MyServices extends StatefulWidget {
  const MyServices({Key? key}) : super(key: key);

  @override
  State<MyServices> createState() => _MyServicesState();
}

class _MyServicesState extends State<MyServices> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MakeAppBar(),
      drawer: MakeDrawer(context),
      bottomNavigationBar: MakeBottomNavigationBar(context, 2),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Home()),
          );
        },
        backgroundColor: Colors.green,
        child: SvgPicture.asset(
          "assets/images/svg/add.svg",
          color: blanc,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      body: Column(
        children: [
          MakeTitle(context, "Services"),
          SizedBox(height: 30),

          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.symmetric(horizontal: 30),
            itemCount: 20,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount:  2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              childAspectRatio: (4 / 4),
            ),
            itemBuilder : (context,index,) {
              return Container(
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
                      height:  MediaQuery.of(context).size.width*0.3,
                      decoration: BoxDecoration(
                        border: BorderDirectional(bottom: BorderSide(width: 5,color: grisClaire)),
                      ),
                      child: Image.asset("assets/images/jpeg/medecine4.jpg", fit: BoxFit.cover,),
                    ),
                    Expanded(child: Center(
                      child: Text("Déontologie", style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                    ),),

                  ],
                ),
              );
            },
          ),
          ),
        ],
      ),

    );
  }
}