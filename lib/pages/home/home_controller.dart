import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{

  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  late TextEditingController emailController, passwordController;
  var email = '';
  var password = '';

  @override
  void onInit(){
    super.onInit();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void onReady(){
    super.onReady();
  }

  @override
  void onClose(){
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }

  String? validateEmail(String value){
    if(!GetUtils.isEmail(value)){
      return "Geçerli bir Email adresi değil";
    }
    return null;
  }

  String? validatePassword(String value){
    if(value.length<6){
      return "Şifre en az 6 karakter olmalı";
    }
    return null;
  }

  void checkLogin(){
    final isValid = loginFormKey.currentState!.validate();
    if(!isValid){
      return;
    }
    loginFormKey.currentState!.save();
  }
}