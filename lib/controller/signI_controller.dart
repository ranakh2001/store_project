import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SigninController extends GetxController {
  bool visible = true;
  String email = "";
  String password = "";
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void check(String email, String password) {
    if (email == "rana.khodary@gmail.com" && password == "12345") {
      Get.offAndToNamed('/home');
    }
  }

  void login() {
    email = emailController.text;
    password = passwordController.text;
    check(email, password);
  }

  void visibility() {
    visible ? visible = false : visible = true;
    update();
  }

  void logout() {
    email = "";
    password = "";
    Get.offAndToNamed('/signin');
  }
}
