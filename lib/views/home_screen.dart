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
                  margin: EdgeInsets.symmetric(vertical: width*0.02),
                  child: Row(
                    children: [

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
