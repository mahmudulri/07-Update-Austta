import 'package:get/get.dart';

import '../../user_post/model/userjob_post_model.dart';
import '../model/all_job_post.dart';
import '../providers/job_provider.dart';

class JobController extends GetxController {
  //TODO: Implement JobController

  final count = 0.obs;

  var isJobPostLoading = false.obs;
  var jobPost = AllJobPost().obs;

  @override
  void onInit() {
    super.onInit();
    fetchUserJobPost();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;

  Future<void> fetchUserJobPost() async {
    isJobPostLoading.value = true;
    try{
      var jobPosts = await JobProvider().getUserJobPost();
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

}
