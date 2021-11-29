import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(left: width*0.03),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: height * 0.01),
                  Container(
                    child: Text("Bloc News". toUpperCase(), style: TextStyle(
                      fontSize: 18,fontWeight: FontWeight.bold
                    ),),
                  ),
                  SizedBox(height: height * 0.01),
                  Container(
                    height: 1,
                    color: Colors.grey.withOpacity(0.7),
                    width: width,
                    margin: EdgeInsets.symmetric(horizontal: width*0.01),

                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white70,
              margin: EdgeInsets.only(top: height * 0.08),
              child: ListView.builder(
                itemCount: 12,
                itemBuilder: (context, index){
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                      blurRadius: 1,
                      color: Colors.grey,
                      offset: Offset(0, 2),
                        spreadRadius: 1)
                      ]),
                  height: height*0.15,
                    margin: EdgeInsets.only(
                        bottom: height * 0.01,
                        top: height * 0.01,
                        left: width * 0.02,
                        right: width * 0.02),
                    child: Row(
                    children: [
                  Container(
                    width: width * 0.3,
                    height: height * 0.15,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          ),
                          image: DecorationImage(
                              image: NetworkImage("https://images.contentstack.io/v3/assets/bltf04078f3cf7a9c30/blt7b6786f4ce3d917d/60548730cc77b20f047a86ac/GettyImages-1223643360.jpg",),
                              fit: BoxFit.cover)),
                      ),
                    ],
                  ),
                );
            }),
            )
          ],
        )
      ),
    );
  }
}
