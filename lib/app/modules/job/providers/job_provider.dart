import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../user_post/model/userjob_post_model.dart';
import '../model/all_job_post.dart';

class JobProvider extends GetConnect {

  GetStorage _getStorage = GetStorage('app_storage');

  @override
  void onInit() {
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<AllJobPost?> getUserJobPost() async {

    final String? logInToken = _getStorage.read('token');

    // final String? logInToken = '198|pJ2sBQdL9dNXW13DdtgfmizUC8qEXvpOiQNRD5DX';

    var response = await get(
        'http://172.31.120.238:80/api/all-job-post',
        headers: {'Authorization': 'Bearer $logInToken'}
    );

    if (response.statusCode == 200) {
      print("errorafterhit //////////" + response.body.toString());

      try {
        if (response.body['status'] == 200) {
          print("bodystatus //////////" + response.body['status'].toString());

          var jsonString = response.body;
          return AllJobPost.fromJson(jsonString);
        }
      } catch (e) {
        print(e.toString());
      }
    } else {
      return null;
    }
  }
}
