import 'dart:developer';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

Future<void> backgoundHandler(RemoteMessage message) async {
  print("->"+message.data.toString());
  print("-->"+message.notification!.title.toString());
}

class NotificationService{

  static var userToken = ''.obs;


  static Future<void> initialize() async {
    NotificationSettings settings = await FirebaseMessaging.instance.requestPermission();

    if(settings.authorizationStatus == AuthorizationStatus.authorized){

       log("Notification Initializer");


       await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
         alert: true,
         badge: true,
         sound: true,
       );

      FirebaseMessaging.onBackgroundMessage(backgoundHandler);
      FirebaseMessaging.onMessageOpenedApp.listen((message) {
        log("message opened ${message.notification!.title}");

      });

      FirebaseMessaging.onMessage.listen((message) {
        log("message received ${message.notification!.title}");
      });


      log("Notification Initializer 2");
    }

  }

  static Future<void> getUserToken() async {
    await FirebaseMessaging.instance.getToken().then((token) =>
      userToken.value = token.toString()
    );
    print('Tokkkkkkkkkkkkkkkkkkkken '+userToken.toString());
  }
}