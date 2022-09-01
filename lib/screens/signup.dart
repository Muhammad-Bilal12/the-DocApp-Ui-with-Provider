import 'package:auth_buttons/auth_buttons.dart';
import 'package:doc_app_provider/utils/custom_widgets/custom_auth_btn.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../utils/constants/color_constant.dart';
import '../utils/custom_widgets/custom_textFeild.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/signup.png',
                scale: 3.0,
              ),
              const SizedBox(height: 10),
              const Text(
                'Create New Account',
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              const customTextFeild(
                hintText: 'Email',
                icon: Icon(Icons.email),
              ),
              const SizedBox(height: 10),
              const customTextFeild(
                hintText: 'Password',
                icon: Icon(Icons.lock),
                obsecuareText: true,
                isPassword: true,
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Consumer(builder: (context, val, child) {
                    return Checkbox(
                      fillColor:
                          MaterialStateProperty.all(ColorConstant.primaryColor),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4)),
                      value: true,
                      onChanged: (value) {},
                    );
                  }),
                  const Text('Remember me'),
                ],
              ),
              const SizedBox(height: 10),
              CustomAuthBtn(btnText: "SignUp", ontap: () {}),
              const SizedBox(height: 20),
              Row(
                children: const [
                  Expanded(child: Divider()),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text("or continue with "),
                  ),
                  Expanded(child: Divider()),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GoogleAuthButton(
                    onPressed: () {},
                    themeMode: ThemeMode.light,
                    style: AuthButtonStyle(
                      buttonType: AuthButtonType.icon,
                      iconType: AuthIconType.secondary,
                    ),
                  ),
                  FacebookAuthButton(
                    themeMode: ThemeMode.light,
                    onPressed: () {},
                    style: AuthButtonStyle(
                      buttonType: AuthButtonType.icon,
                      iconType: AuthIconType.secondary,
                    ),
                  ),
                  AppleAuthButton(
                    themeMode: ThemeMode.light,
                    onPressed: () {},
                    style: AuthButtonStyle(
                      buttonType: AuthButtonType.icon,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already have an account?",
                    style: TextStyle(color: Colors.grey),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, 'login/');
                    },
                    child: Text(
                      "Signin",
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
