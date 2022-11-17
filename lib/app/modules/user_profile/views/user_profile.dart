import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    var screenheight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    String longText =
        "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout as opposed to using 'Content here, content here', making it look like readable English.";
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
            backgroundColor: Color(0xff0FA958),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(
                Icons.add,
                color: Color(0xff777777),
              ),
            ),
            onPressed: () {}),
        appBar: AppBar(
          elevation: 0.0,
          // backgroundColor: Color(0xff0FA958),
          backgroundColor: Colors.white,
          centerTitle: true,
          leading: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          title: Text(
            "Profile",
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
          ),
        ),
        // backgroundColor: Color(0xff0FA958),
        body: Padding(
          padding: const EdgeInsets.only(
            top: 2,
            left: 8,
            right: 8,
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 5,
                  right: 5,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xffE5E5E5),
                        blurRadius: 10.0, // soften the shadow
                        spreadRadius: 0.0, //extend the shadow
                        offset: Offset(
                          0.0, // Move to right 5  horizontally
                          0.0, // Move to bottom 5 Vertically
                        ),
                      ),
                    ],
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: CircleAvatar(
                            radius: 55,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              radius: 50,
                              backgroundImage:
                                  AssetImage('assets/images/dummy_profile.jpg'),
                            ),
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Rakibul Islam Khan",
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        fontSize: 17,
                                        color: Color(0xff777777),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "Managing Director",
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        fontSize: 15,
                                        color: Color(0xff777777),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "Pakiza Technovation Ltd.",
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                        fontSize: 13,
                                        color: Color(0xff777777),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(width: 1),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(8)),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Text(
                                            "Upload CV",
                                            style: TextStyle(
                                              color: Color(0xff777777),
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Export CV as",
                                        style: TextStyle(
                                          color: Color(0xff777777),
                                          fontSize: 12,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Icon(Icons.picture_as_pdf),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Column(
                      children: [
                        profileItems_Bio(
                          icon: Icons.person,
                          screenWidth: screenWidth,
                          longText: longText,
                          title: "Bio",
                        ),
                        profileItems_Contact_info(
                          screenWidth: screenWidth,
                          longText: longText,
                          title: "Contact Information",
                          icon: Icons.notification_add,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class profileItems_Bio extends StatelessWidget {
  const profileItems_Bio({
    Key? key,
    required this.screenWidth,
    required this.longText,
    required this.title,
    required this.icon,
  }) : super(key: key);

  final double screenWidth;
  final String longText;
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        children: [
          Icon(
            icon,
            size: screenWidth * 0.080,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  left: BorderSide(
                    color: Color(0xff0FA958),
                    width: 6,
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontSize: 16,
                              color: Color(0xff777777),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            _showBioDialog(context);
                          },
                          child: Icon(
                            Icons.edit_note,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      longText,
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: 13,
                          color: Color(0xff777777),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _showBioDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return AlertDialog(
          titlePadding: EdgeInsets.only(top: 12, left: 24, right: 12),
          contentPadding: EdgeInsets.only(top: 12, left: 24, bottom: 20),
          insetPadding: EdgeInsets.symmetric(horizontal: 15),

          contentTextStyle: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
            fontSize: 14.0,
          ),
          title: Container(
            width: 300,
            child: Text('Enter your bio'),
          ),
          //EN: Logging out
          content: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
            ),
            maxLines: 5,
          ),
          actions: <Widget>[
            InkWell(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Color(0xff00602B),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Save',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal,
                      fontSize: 16.0,
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Color(0xff00602B),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Cancel',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal,
                      fontSize: 16.0,
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

class profileItems_Contact_info extends StatelessWidget {
  const profileItems_Contact_info({
    Key? key,
    required this.screenWidth,
    required this.longText,
    required this.title,
    required this.icon,
  }) : super(key: key);

  final double screenWidth;
  final String longText;
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        children: [
          Icon(
            icon,
            size: screenWidth * 0.080,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  left: BorderSide(
                    color: Color(0xff0FA958),
                    width: 6,
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontSize: 16,
                              color: Color(0xff777777),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            _showBioDialog(context);
                          },
                          child: Icon(
                            Icons.edit_note,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      longText,
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                          fontSize: 13,
                          color: Color(0xff777777),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _showBioDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return AlertDialog(
          titlePadding: EdgeInsets.only(top: 12, left: 24, right: 12),
          contentPadding: EdgeInsets.only(top: 12, left: 24, bottom: 20),
          insetPadding: EdgeInsets.symmetric(horizontal: 15),
          titleTextStyle: TextStyle(
            color: Colors.green,
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.normal,
            fontSize: 16.0,
          ),
          contentTextStyle: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
            fontSize: 14.0,
          ),
          title: Container(
            width: 300,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Enter your contact information'),
                IconButton(
                  icon: Icon(
                    Icons.close,
                    color: Colors.grey,
                    size: 28,
                  ),
                  onPressed: () => Navigator.of(context).pop(),
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  tooltip: "close",
                )
              ],
            ),
          ),
          //EN: Logging out
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                  ),
                  maxLines: 5,
                ),
              ],
            ),
          ),
          actions: <Widget>[
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'Save',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal,
                  fontSize: 16.0,
                ),
              ), //EN: Yes
            ),
            ElevatedButton(
              child: Text(
                'Cancel',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal,
                  fontSize: 16.0,
                ),
              ), //EN: No
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
