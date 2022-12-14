import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utill/app_colors.dart';
import '../../../widget/alumni_list.dart';
import '../../../widget/title_text.dart';
// import '../controllers/alumni_book_controller.dart';

class AlumniBookView extends StatefulWidget {
  // const AlumniBook({Key? key}) : super(key: key);

  @override
  State<AlumniBookView> createState() => _AlumniBookViewState();
}

class _AlumniBookViewState extends State<AlumniBookView> {
  var quantityPiece = [
    '1 piece',
    '2 piece',
    '3 piece',
    '4 piece',
    '5 piece',
    '6 piece',
    '7 piece',
    '8 piece',
    '9 piece',
    '10 piece'
  ];

  var selectPiece = "1 piece".obs;

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return DefaultTabController(
      length: 2,
      child: Scaffold(
          backgroundColor: Colors.grey.withOpacity(0.1),
          appBar: AppBar(
            elevation: 0.0,
            centerTitle: true,
            backgroundColor: Color(0xffE5E5E5),
            leading: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            title: Text(
              "Alumni",
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  fontSize: screenHeight * 0.020,
                  color: Color(0xff0FA958),
                ),
              ),
            ),
            bottom: PreferredSize(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  color: Color(0xff00602B),
                  height: 2.0,
                ),
              ),
              preferredSize: Size.fromHeight(4.0),
            ),
          ),
          body: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: screenHeight * 0.020,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: screenHeight * 0.023,
                    right: screenHeight * 0.023,
                  ),
                  child: Container(
                    height: screenHeight * 0.08,
                    width: double.infinity,
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xffE5E5E5),
                          blurRadius: 5.0, // soften the shadow
                          spreadRadius: 3.0, //extend the shadow
                          offset: Offset(
                            0.0, // Move to right 5  horizontally
                            0.0, // Move to bottom 5 Vertically
                          ),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Padding(
                            padding:
                                EdgeInsets.only(left: screenHeight * 0.015),
                            child: Icon(
                              Icons.search,
                              size: screenHeight * 0.035,
                            )),
                        Expanded(
                          flex: 7,
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: screenHeight * 0.010,
                                right: screenWidth * 0.040),
                            child: Container(
                              child: TextFormField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Enter Text"),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                            flex: 1,
                            child: Padding(
                              padding:
                                  EdgeInsets.only(left: screenHeight * 0.015),
                              child: Icon(
                                Icons.close_sharp,
                                color: Colors.grey,
                              ),
                            )),
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: EdgeInsets.only(left: screenWidth * 0.017),
                            child: VerticalDivider(
                              color: Color(0xff00602B),
                              thickness: 1.0,
                              indent: 8.0,
                              endIndent: 8.0,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: screenWidth * 0.019),
                          child: GestureDetector(
                            onTap: () {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      insetPadding: EdgeInsets.only(
                                          left: screenHeight * 0.025,
                                          right: screenHeight * 0.025,
                                          top: screenHeight * 0.10,
                                          bottom: screenHeight * 0.10),
                                      backgroundColor: Color(0xff00602B),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0)),
                                      title: Padding(
                                        padding: EdgeInsets.only(
                                            left: screenHeight * 0.015),
                                        child: Row(
                                          children: [
                                            Text(
                                              'Filter your search',
                                              style: GoogleFonts.poppins(
                                                color: Colors.white,
                                                fontSize: screenHeight * 0.027,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            Spacer(),
                                            Align(
                                              alignment: Alignment.topLeft,
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                    bottom:
                                                        screenHeight * 0.022),
                                                child: GestureDetector(
                                                  onTap: () {
                                                    Navigator.pop(context);
                                                  },
                                                  child: Image.asset(
                                                      'assets/images/alert_cancel.png'),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      content: Container(
                                        height: screenHeight,
                                        width: screenWidth,
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: screenHeight * 0.020,
                                            ),
                                            Container(
                                              height: screenHeight * 0.070,
                                              // width: double.infinity,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                                color: Colors.white,
                                              ),
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      left:
                                                          screenHeight * 0.019,
                                                      right:
                                                          screenHeight * 0.019),
                                                  child: Obx(
                                                    () =>
                                                        DropdownButton<String>(
                                                      hint: Text(
                                                        "Select Quantity",
                                                        style: TextStyle(
                                                            color: Colors.grey),
                                                      ),
                                                      value: selectPiece.value,
                                                      icon: Padding(
                                                        padding: EdgeInsets.only(
                                                            top: screenHeight *
                                                                0.010),
                                                        child: Image.asset(
                                                            'assets/images/arrow_down.png'),
                                                      ),
                                                      iconSize: 20,
                                                      isExpanded: true,
                                                      underline: SizedBox(),
                                                      onChanged: (chosenValue) {
                                                        selectPiece.value =
                                                            chosenValue
                                                                .toString();
                                                      },
                                                      items: quantityPiece
                                                          .map((quantityValue) {
                                                        return DropdownMenuItem(
                                                            value:
                                                                quantityValue,
                                                            child: Text(
                                                                quantityValue));
                                                      }).toList(),
                                                    ),
                                                  )),
                                            ),
                                            SizedBox(
                                              height: screenHeight * 0.010,
                                            ),
                                            Container(
                                              height: screenHeight * 0.070,
                                              // width: double.infinity,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                                color: Colors.white,
                                              ),
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      left:
                                                          screenHeight * 0.019,
                                                      right:
                                                          screenHeight * 0.019),
                                                  child: Obx(
                                                    () =>
                                                        DropdownButton<String>(
                                                      hint: Text(
                                                        "Select Quantity",
                                                        style: TextStyle(
                                                            color: Colors.grey),
                                                      ),
                                                      value: selectPiece.value,
                                                      icon: Padding(
                                                        padding: EdgeInsets.only(
                                                            top: screenHeight *
                                                                0.010),
                                                        child: Image.asset(
                                                            'assets/images/arrow_down.png'),
                                                      ),
                                                      iconSize: 20,
                                                      isExpanded: true,
                                                      underline: SizedBox(),
                                                      onChanged: (chosenValue) {
                                                        selectPiece.value =
                                                            chosenValue
                                                                .toString();
                                                      },
                                                      items: quantityPiece
                                                          .map((quantityValue) {
                                                        return DropdownMenuItem(
                                                            value:
                                                                quantityValue,
                                                            child: Text(
                                                                quantityValue));
                                                      }).toList(),
                                                    ),
                                                  )),
                                            ),
                                            SizedBox(
                                              height: screenHeight * 0.010,
                                            ),
                                            Container(
                                              height: screenHeight * 0.070,
                                              // width: double.infinity,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                                color: Colors.white,
                                              ),
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      left:
                                                          screenHeight * 0.019,
                                                      right:
                                                          screenHeight * 0.019),
                                                  child: Obx(
                                                    () =>
                                                        DropdownButton<String>(
                                                      hint: Text(
                                                        "Select Quantity",
                                                        style: TextStyle(
                                                            color: Colors.grey),
                                                      ),
                                                      value: selectPiece.value,
                                                      icon: Padding(
                                                        padding: EdgeInsets.only(
                                                            top: screenHeight *
                                                                0.010),
                                                        child: Image.asset(
                                                            'assets/images/arrow_down.png'),
                                                      ),
                                                      iconSize: 20,
                                                      isExpanded: true,
                                                      underline: SizedBox(),
                                                      onChanged: (chosenValue) {
                                                        selectPiece.value =
                                                            chosenValue
                                                                .toString();
                                                      },
                                                      items: quantityPiece
                                                          .map((quantityValue) {
                                                        return DropdownMenuItem(
                                                            value:
                                                                quantityValue,
                                                            child: Text(
                                                                quantityValue));
                                                      }).toList(),
                                                    ),
                                                  )),
                                            ),
                                            SizedBox(
                                              height: screenHeight * 0.010,
                                            ),
                                            Container(
                                              height: screenHeight * 0.070,
                                              // width: double.infinity,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                                color: Colors.white,
                                              ),
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      left:
                                                          screenHeight * 0.019,
                                                      right:
                                                          screenHeight * 0.019),
                                                  child: Obx(
                                                    () =>
                                                        DropdownButton<String>(
                                                      hint: Text(
                                                        "Select Quantity",
                                                        style: TextStyle(
                                                            color: Colors.grey),
                                                      ),
                                                      value: selectPiece.value,
                                                      icon: Padding(
                                                        padding: EdgeInsets.only(
                                                            top: screenHeight *
                                                                0.010),
                                                        child: Image.asset(
                                                            'assets/images/arrow_down.png'),
                                                      ),
                                                      iconSize: 20,
                                                      isExpanded: true,
                                                      underline: SizedBox(),
                                                      onChanged: (chosenValue) {
                                                        selectPiece.value =
                                                            chosenValue
                                                                .toString();
                                                      },
                                                      items: quantityPiece
                                                          .map((quantityValue) {
                                                        return DropdownMenuItem(
                                                            value:
                                                                quantityValue,
                                                            child: Text(
                                                                quantityValue));
                                                      }).toList(),
                                                    ),
                                                  )),
                                            ),
                                            Spacer(),
                                            Align(
                                              alignment: Alignment.bottomCenter,
                                              child: ElevatedButton(
                                                style: ButtonStyle(
                                                    backgroundColor:
                                                        MaterialStateProperty
                                                            .all(Colors.white),
                                                    shape: MaterialStateProperty
                                                        .all(
                                                            RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              08.0),
                                                    ))),
                                                onPressed: () {},
                                                child: Center(
                                                  child: Text(
                                                    "Filter",
                                                    style: TextStyle(
                                                        color: Colors.green),
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    );
                                  });
                            },
                            child: Image.asset(
                                'assets/images/alumni_search_filter.png'),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.020,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: screenHeight * 0.019,
                  ),
                  child: Text(
                    'Search terms',
                    style: GoogleFonts.poppins(color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.020,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: screenHeight * 0.019,
                  ),
                  child: Text(
                    'Alumni found 201',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                // SizedBox(
                //   height: screenHeight * 0.020,
                // ),

                // Tabbar started

                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: screenHeight * 0.050,
                    child: TabBar(
                      // indicatorColor: Colors.transparent,
                      indicatorSize: TabBarIndicatorSize.label,
                      indicator: UnderlineTabIndicator(
                        borderSide: BorderSide(
                          width: 2,
                          color: Color(0xFF000000),
                        ),
                        insets: EdgeInsets.symmetric(horizontal: 0),
                      ),
                      isScrollable: true,
                      labelColor: Colors.black,
                      tabs: [
                        Text(
                          "Alumnai",
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              color: Color(0xff333333),
                            ),
                          ),
                        ),
                        Text(
                          "Stuffs",
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              color: Color(0xff333333),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.010,
                ),

                Expanded(
                  child: TabBarView(
                    children: [
                      AlumniList('alumni_book'),
                      AlumniList('alumni_book'),
                    ],
                  ),
                ),

                // Expanded(child: AlumniList('alumni_book'))
              ],
            ),
          )),
    );
  }
}
