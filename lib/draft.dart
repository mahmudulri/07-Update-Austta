import 'package:flutter/material.dart';

class Draftpage extends StatelessWidget {
  const Draftpage({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeigth = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(
            body: Center(
      child: Container(
        height: 300,
        width: screenWidth,
        child: Stack(alignment: Alignment.center, children: [
          Container(
            child: Image.asset("assets/images/upcoming.jpg"),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 120,
              width: screenWidth,
              color: Colors.black38,
              child: Container(
                height: 100,
                width: screenWidth - 100,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    top: 15,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Pakiza Technovation Limited",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "20 Dec 2011",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ]),
      ),
    )));
  }
}
