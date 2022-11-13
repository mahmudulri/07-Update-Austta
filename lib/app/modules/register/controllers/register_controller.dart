import 'package:aust_textile_alumni/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:image_picker/image_picker.dart';

import '../../otp/views/otp_view.dart';
import 'dart:io';
import '../providers/register_provider.dart';

class RegisterController extends GetxController {
  //TODO: Implement RegisterController

  var fullName = ''.obs;
  var name = ''.obs;
  var batch = ''.obs;
  var mobileNo = ''.obs;
  var bloodGroup = ''.obs;
  var stream = ''.obs;

  var jobSector = ''.obs;
  var jobSubSector = ''.obs;
  var email = ''.obs;
  var officialEmail = ''.obs;
  var officeAddress = ''.obs;
  var companyName = ''.obs;
  var presentAddress = ''.obs;
  var permanentAddress = ''.obs;
  var password = ''.obs;
  var confirmPassword = ''.obs;

  var isLoading = false.obs;

  var selectedImagePath = ''.obs;

  File? imageFile;

  var dropdownbloodgroup = [
    "A+",
    "A-",
    "B+",
    "B-",
    "O+",
    "O-",
    "AB+",
    "AB-",
  ].obs;

  var dropdownBatch = <String>[];

  final count = 0.obs;
  @override
  void onInit() {
    for (int i = 1950; i <= 2030; i++) {
      dropdownBatch.add(i.toString());
    }

    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;

  Future<void> getImage(double screenHeight) async {
    final pickedFile = await ImagePicker().pickImage(
      source: ImageSource.gallery,
    );
    if (pickedFile != null) {
      selectedImagePath.value = pickedFile.path;
      imageFile = File(pickedFile.path);
    } else {
      print("No image selected");
    }
  }

  Future<void> checkRegistration() async {
    isLoading.value = true;

    var status = await RegisterProvider().doRegistration(
        fullName.value.toString(),
        name.value.toString(),
        email.value.toString(),
        batch.value.toString(),
        mobileNo.value.toString(),
        bloodGroup.value.toString(),
        stream.value.toString(),
        jobSector.value.toString(),
        jobSubSector.value.toString(),
        officialEmail.value.toString(),
        officeAddress.value.toString(),
        companyName.value.toString(),
        presentAddress.value.toString(),
        permanentAddress.value.toString(),
        password.value.toString(),
        confirmPassword.value.toString(),
        imageFile as File,
        selectedImagePath.value.toString());
    print("Registration status ......." + status.toString());

    if (status == true) {
      isLoading.value = false;
      // Get.offAndToNamed(Routes.HOME);
      Get.toNamed(Routes.OTP);
    } else {
      isLoading.value = false;
    }
  }
}
