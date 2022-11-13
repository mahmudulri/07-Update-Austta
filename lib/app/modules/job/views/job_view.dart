import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

import '../../../routes/app_pages.dart';
import '../../../widget/job_list.dart';
import '../controllers/job_controller.dart';

class JobView extends GetView<JobController> {

  JobController controller = Get.put(JobController());
  
  @override
  Widget build(BuildContext context) {

    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeigth = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: (){
            Get.toNamed(Routes.BASE);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          "Job Post",
          style: GoogleFonts.poppins(
              color: Colors.green,
              fontSize: screenHeigth * 0.017
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding:EdgeInsets.only(
              left: screenHeigth * 0.022,
              right: screenHeigth * 0.022,
            ),
            child: Container(
              height: screenHeigth * 0.001,
              color: Colors.green,
              width: screenWidth,
            ),
          ),
          SizedBox(height: screenHeigth * 0.010,),
          Expanded(
              child: JobList('job view'))
        ],
      ),
    );
  }
}
