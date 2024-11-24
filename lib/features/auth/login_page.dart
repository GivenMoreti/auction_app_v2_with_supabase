import 'package:flutter/material.dart';
import 'package:ride_sharing_fe/core/Theme/app_pallet.dart';
import 'package:ride_sharing_fe/features/auth/sign_up_page.dart';
import 'package:ride_sharing_fe/features/presentation/home_page.dart';
import 'package:ride_sharing_fe/utils/auth/my_text_box.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  /*
  user inputs
  */
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  //navigation

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppPallet.backgroundColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Sign in",
                style: TextStyle(fontSize: 50, color: AppPallet.orangeColor),
              ),

              SizedBox(
                height: 10,
              ),

              //email

              MyTextBox(
                controller: emailController,
                hintText: "Email",
              ),

              SizedBox(
                height: 10,
              ),
              //password
              MyTextBox(
                controller: passwordController,
                hintText: "password",
                obscureText: true,
              ),
              SizedBox(
                height: 10,
              ),
              //submit button
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return HomePage();
                    },
                  ));
                },
                child: Text("Login"),
              ),

              //dont have acocunt?

              SizedBox(
                height: 10,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have Account?",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                            fontSize: 18, color: AppPallet.orangeColor),
                      ),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return SignUpPage();
                          },
                        ));
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
