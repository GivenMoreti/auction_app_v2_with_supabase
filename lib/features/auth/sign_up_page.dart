import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ride_sharing_fe/core/Theme/app_pallet.dart';
import 'package:ride_sharing_fe/features/auth/login_page.dart';
import 'package:ride_sharing_fe/features/presentation/home_page.dart';
import 'package:ride_sharing_fe/utils/auth/my_text_box.dart';

class SignUpPage extends StatefulWidget {
  SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppPallet.backgroundColor,
      ),
      backgroundColor: AppPallet.backgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Sign Up",
              style: TextStyle(fontSize: 40, color: AppPallet.textColor),
            ),
            SizedBox(
              height: 10,
            ),
            //username
            MyTextBox(controller: username, hintText: "username"),
            SizedBox(
              height: 10,
            ),
            //email
            MyTextBox(controller: email, hintText: "email"),
            SizedBox(
              height: 10,
            ),
            //password
            MyTextBox(
              controller: password,
              hintText: "password",
              obscureText: true,
            ),
            SizedBox(
              height: 10,
            ),
            //sign up
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return HomePage();
                    },
                  ),
                );
              },
              child: Text("sign up"),
            ),

            //already have account?
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have Account?",
                  style: TextStyle(fontSize: 18, color: AppPallet.textColor),
                ),
                SizedBox(
                  width: 5,
                ),
                GestureDetector(
                  child: Text(
                    "Sign in",
                    style:
                        TextStyle(fontSize: 18, color: AppPallet.orangeColor),
                  ),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return LoginPage();
                      },
                    ));
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
