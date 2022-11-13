import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../event/model/event_model.dart';
import '../model/job_model.dart';
import '../model/post_model.dart';

class HomeProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  GetStorage _getStorage = GetStorage('app_storage');


  Future<dynamic> doUserLogout() async {

    final String? logInToken = _getStorage.read('token');

    // final String? logInToken = '198|pJ2sBQdL9dNXW13DdtgfmizUC8qEXvpOiQNRD5DX';

    var response = await get(
        'https://rakib10ms.com/server/public/api/post-type',
        headers: {'Authorization': 'Bearer $logInToken'},
    );

    if (response.statusCode == 200) {
      print("errorafterhit //////////" + response.body.toString());

      try {
        if (response.body['status'] == 200) {
          print("bodystatus //////////" + response.body['status'].toString());
          return true;
        }
      } catch (e) {
        print(e.toString());
      }
    } else {
      return false;
    }


  }

  Future<Job?> getJobPost() async {

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
           print("response,,,,,,,,,,,,,,,,,,,,,"+jsonString.toString());
          return Job.fromJson(jsonString);
        }
      } catch (e) {
        print(e.toString());
      }
    } else {
      return null;
    }
  }

  Future<AllPost?> getPost() async {

    final String? logInToken = _getStorage.read('token');

    // final String? logInToken = '198|pJ2sBQdL9dNXW13DdtgfmizUC8qEXvpOiQNRD5DX';

    var response = await get(
        'http://172.31.120.238:80/api/all-posts',
        headers: {'Authorization': 'Bearer $logInToken'}
    );

    if (response.statusCode == 200) {
       print("errorafterhit //////////" + response.body.toString());

      try {
        if (response.body['status'] == 200) {
           print("bodystatus //////////" + response.body['status'].toString());

          var jsonString = response.body;
          print("response,,,,,,,,,,,,,,,,,,,,,"+jsonString.toString());
          return AllPost.fromJson(jsonString);
        }
      } catch (e) {
        print(e.toString());
      }
    } else {
      return null;
    }
  }

  Future<EventModel?> getEventPost() async {

    final String? logInToken = _getStorage.read('token');

    // final String? logInToken = '198|pJ2sBQdL9dNXW13DdtgfmizUC8qEXvpOiQNRD5DX';

    var response = await get(
        'http://172.31.120.238:80/api/all-event-posts',
        headers: {'Authorization': 'Bearer $logInToken'}
    );

    if (response.statusCode == 200) {
      // print("errorafterhit //////////" + response.body.toString());

      try {
        if (response.body['status'] == 200) {
          // print("bodystatus //////////" + response.body['status'].toString());

          var jsonString = response.body;
          // print("response,,,,,,,,,,,,,,,,,,,,,"+jsonString.toString());
          return EventModel.fromJson(jsonString);
        }
      } catch (e) {
        print(e.toString());
      }
    } else {
      return null;
    }
  }
}
