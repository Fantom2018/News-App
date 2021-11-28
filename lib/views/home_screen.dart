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
                children: [
                  SizedBox(height: height * 0.01),
                  Container(
                    child: Text("Bloc News". toUpperCase(), style: TextStyle(
                      fontSize: 18,fontWeight: FontWeight.bold
                    ),),
                  ),
                ],
              ),
            )
          ],
        )
      ),
    );
  }
}
