import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'dart:io';
import 'package:http/http.dart 'as http;

import '../../../utill/constant.dart';


class RegisterProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  GetStorage _getStorage = GetStorage('app_storage');

  Future<dynamic> doRegistration(String full_name, String nick_name,
      String email, String batch,
      String phone_no, String blood_group,
      String stream, String job_sector, String job_sub_sector,
      String official_email, String office_address,
      String name_of_company, String present_address, String permanent_address,
      String password,
      String confirm_pass, File image_file, String path,) async {

    Map<String, String> userData = Map();
    userData['full_name'] = full_name;
    userData['nick_name'] = nick_name;
    userData['email'] = email;
    userData['batch'] = batch;
    userData['phone_no'] = phone_no;
    userData['blood_group'] = blood_group;
    userData['stream'] = email;
    userData['job_sector'] = job_sector;
    userData['job_sub_sector'] = job_sub_sector;
    userData['office_email'] = official_email;
    userData['office_address'] = office_address;
    userData['name_of_company'] = name_of_company;
    userData['present_address'] = present_address;
    userData['permanent_address'] = permanent_address;
    userData['password'] = password;
    userData['confirm_password'] = confirm_pass;


    // final url = Uri.parse(BASE_URL+'register');

    final url = Uri.parse('http://172.31.120.238:80/api/register');

    var request = http.MultipartRequest('POST',url);

    request.files.add(await http.MultipartFile.fromPath('image',path ));
    request.fields.addAll(userData);

    var responsed = await request.send();

    var response1 = await http.Response.fromStream(responsed);


    var response = json.decode(response1.body);


    print("errorprovider //////////" + userData.toString());



    if (responsed.statusCode == 200) {
      print("errorafterhit //////////" + response.toString());



      try {
        if (response['status'] == 200) {
          print("bodystatus //////////" + response.toString());
          String user_id = response['emailotp']['user_id'].toString();

          print("resgistration credential ......." + user_id);
           await saveUserId(int.parse(user_id));
          return true;
        }
        else {
          Get.snackbar(
            "Error",
            "This email has been taken",
            colorText: Colors.white,
            backgroundColor: Color(0xff00602B),
            snackPosition: SnackPosition.BOTTOM,

          );
        }
      } catch (e) {
        print(e.toString());
      }

    }
    else {
      Get.snackbar(
        "Status",
        "Could not Registered the User",
        colorText: Colors.white,
        backgroundColor:Color(0xff00602B),
        snackPosition: SnackPosition.BOTTOM,

      );
    }


  }

  saveUserId(int userId) async {
    await _getStorage.write('employee_id', userId);
    final int? emp_id = await _getStorage.read('employee_id');
    print('login provider' + emp_id!.toString());
    return true;
  }
}
