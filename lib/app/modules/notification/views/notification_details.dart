import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificatonDetails extends StatelessWidget {
  const NotificatonDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeigth = MediaQuery.of(context).size.height;
    String longText =
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus aliquam quam eget arcu finibus, non condimentum purus aliquam. Sed rhoncus nisi eu nunc lacinia porttitor. Proin eu volutpat sapien. Aliquam euismod, sem id ultrices dictum, erat massa pellentesque nibh, ut scelerisque dui purus sit amet sem. Praesent ultricies risus eget metus venenatis dignissim. Duis consectetur pretium massa, ac viverra libero viverra ac. Integer non ipsum et tortor porta sollicitudin porttitor ac ligula. Curabitur cursus nisi massa. Proin eget elementum massa, quis semper sapien. Etiam pharetra aliquet massa vitae viverra. Praesent non nibh sollicitudin, auctor erat eu, ultricies mi. Mauris molestie ornare tellus sed lobortis. Aenean a tempus quam, vitae sollicitudin nisi.";
    // SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
    //     overlays: [SystemUiOverlay.bottom]);
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Color(0xffff00602B)));

    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            toolbarHeight: screenHeigth * 0.100,
            flexibleSpace: Container(
              // height: screenHeigth * 0.120,
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xff00602B),
                    Color(0xff0FA958),
                  ],
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: screenWidth * 0.070,
                        ),
                      ],
                    ),
                  ),
                  Text(
                    "Notifications Details",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: screenWidth * 0.035,
                        color: Color(0xffFFFFFF),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            elevation: 0.0,
          ),
          backgroundColor: Color(0xffE5E5E5),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 15,
                  left: 15,
                  right: 15,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  width: screenWidth,
                  child: Column(
                    children: [
                      IntrinsicHeight(
                        child: Padding(
                          padding: const EdgeInsets.only(
                            right: 10,
                            top: 10,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(
                                Icons.calendar_month,
                                color: Color(0xff777777),
                                size: screenWidth * 0.030,
                              ),
                              Text(
                                '24 Feb 2020',
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    fontSize: screenWidth * 0.025,
                                    color: Color(0xff777777),
                                  ),
                                ),
                              ),
                              VerticalDivider(
                                color: Colors.grey,
                                thickness: 1,
                              ),
                              Text(
                                '10.12 AM',
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    fontSize: screenWidth * 0.025,
                                    color: Color(0xff777777),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 5,
                          left: 20,
                          right: 20,
                          bottom: 10,
                        ),
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Notification Title",
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    fontSize: screenWidth * 0.040,
                                    color: Color(0xff4F4F4F),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: screenHeigth * 0.020,
                              ),
                              Text(
                                longText,
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    fontSize: screenWidth * 0.030,
                                    color: Color(0xff777777),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
