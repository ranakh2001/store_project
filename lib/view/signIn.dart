import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/signI_controller.dart';
import 'TextB.dart';
import 'inputField.dart';
import 'passInput.dart';

class SignIn extends StatelessWidget {
  SigninController controller = Get.find();
  TextStyle style = const TextStyle(
    fontSize: 20,
    color: Colors.lightBlue,
  );

  Color bg = Color.fromARGB(255, 246, 239, 180);
  @override
  Widget build(BuildContext context) => Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [bg, bg.withOpacity(0.5)],
            ),
          ),
          child: ListView(
            children: [
              Image.asset("assets/images/logo.png"),
              GetBuilder<SigninController>(builder: (c)=>
              InputField(
                title: "Email",
                style: style,
                keybordType: TextInputType.emailAddress,
                controller: c.emailController,
              )),
              GetBuilder<SigninController>(builder: (c)=>
                PassInput(
                title: "Password",
                style: style,
                keybordType: TextInputType.visiblePassword,
                visible: c.visible,
                controller: c.passwordController,
                onoff: ()=> c.visibility(),
              )),
              GetBuilder<SigninController>(builder: (c)=>
               Container(
                width: 150,
                margin: const EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: 50.0),
                child: ElevatedButton(
                  onPressed: () {
                    c.login();
                  },
                  child: const Text(
                    "Log In",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
              )
              ),
              TextB(
                "Forgetd Password",
                () {},
              ),
              TextB(
                "SignUp",
                () {},
              )
            ],
          ),
        ),
      );
}
