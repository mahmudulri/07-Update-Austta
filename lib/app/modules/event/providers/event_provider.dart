import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../model/event_model.dart';

class EventProvider extends GetConnect {

  GetStorage _getStorage = GetStorage('app_storage');


  @override
  void onInit() {
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<EventModel?> getEventPost() async {

    final String? logInToken = _getStorage.read('token');

    // final String? logInToken = '198|pJ2sBQdL9dNXW13DdtgfmizUC8qEXvpOiQNRD5DX';

    var response = await get(
        'http://172.31.120.238:80/api/all-event-posts',
        headers: {'Authorization': 'Bearer $logInToken'}
    );

    if (response.statusCode == 200) {
      print("errorafterhit //////////" + response.body.toString());

      try {
        if (response.body['status'] == 200) {
          print("bodystatus //////////" + response.body['status'].toString());

          var jsonString = response.body;
          print("response,,,,,,,,,,,,,,,,,,,,,"+jsonString.toString());
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
