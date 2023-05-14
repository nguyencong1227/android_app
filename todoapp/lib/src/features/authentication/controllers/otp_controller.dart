import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todoapp/repository/authentication_repository/authentication_repository.dart';
import 'package:todoapp/src/features/authentication/screens/task_list/widgets/homepage.dart';


class OTPController extends GetxController {
  static  OTPController get instance => Get.find();

  void verifyOTP(String otp) async {
    var isVerified = await AuthenticationRepository.instance.verifyOTP(otp);
    isVerified ? Get.offAll(MyHomePage()) : Get.back();
  }
}