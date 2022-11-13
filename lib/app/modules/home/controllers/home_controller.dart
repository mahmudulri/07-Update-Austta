import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../../routes/app_pages.dart';
import '../../event/model/event_model.dart';
import '../model/job_model.dart';
import '../model/post_model.dart';
import '../providers/home_provider.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final count = 0.obs;

  var isJobPostLoading = false.obs;
  var jobPost = Job().obs;

  var isAllPostLoading = false.obs;
  var allPost = AllPost().obs;

  var isEventPostLoading = false.obs;
  var event = EventModel().obs;

  @override
  void onInit() {
    super.onInit();
    fetchJobPost();
    fetchAllPost();
    fetchEventPost();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;

  Future<void> checkLogout() async {


    var LogoutStatus = await HomeProvider().doUserLogout();
    print("login status ......." + LogoutStatus.toString());

    if (LogoutStatus == true) {
      _changeLogoutStatus();
    } else {
      Get.snackbar(
        "Status",
        "Could not log out",
        colorText: Colors.white,
        backgroundColor: Color(0xff00602B),
        snackPosition: SnackPosition.BOTTOM,

      );
    }
  }

  _changeLogoutStatus() async {
    GetStorage _getStorage = GetStorage('app_storage');
    await _getStorage.write('token', "");
    Get.offNamed(Routes.LOG_IN);
  }

  Future<void> fetchJobPost() async {
    isJobPostLoading.value = true;
    try{
      var jobPosts = await HomeProvider().getJobPost();
      if ( jobPosts!= null ) {
        jobPost.value = jobPosts;
        isJobPostLoading.value = false;
      }

      else {
        isJobPostLoading.value = false;
      }

    }
    catch(e){
      print(e.toString());
    }
  }

  Future<void> fetchAllPost() async {
    isAllPostLoading.value = true;
    try{
      var allPosts = await HomeProvider().getPost();
      if ( allPosts!= null ) {
        allPost.value = allPosts;
        print("from controller"+allPosts.toString());

        print("from controller"+allPost.value.toString());
        isAllPostLoading.value = false;
      }

      else {
        isAllPostLoading.value = false;
      }

    }
    catch(e){
      print(e.toString());
    }
  }

  Future<void> fetchEventPost() async {
    isEventPostLoading.value = true;
    try{
      var eventPosts = await HomeProvider().getEventPost();
      if ( eventPosts!= null ) {
        event.value = eventPosts;
        isEventPostLoading.value = false;
      }
      else {
        isEventPostLoading.value = false;
      }

    }
    catch(e){
      print(e.toString());
    }
  }
}
