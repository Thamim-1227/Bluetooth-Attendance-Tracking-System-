import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../app_style.dart';
import '../login/login.dart';

class Signup extends StatelessWidget {
  static String id = "/signup";
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.1,
              vertical: size.height * 0.035,
            ),
            child: Column(
              children: [
                Text(
                  "Sign Up",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                SizedBox(height: size.height * 0.018),
                Text(
                  "Create a new account",
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall!
                      .copyWith(fontSize: 15),
                ),
                SizedBox(height: size.height * 0.020),
                TextField(
                  style: const TextStyle(color: kLightTextColor),
                  decoration: InputDecoration(
                    hintText: "Email",
                    prefixIcon: IconButton(
                      onPressed: null,
                      icon: SvgPicture.asset(emailIcon),
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.016),
                TextField(
                  style: const TextStyle(color: kLightTextColor),
                  decoration: InputDecoration(
                    hintText: "Username",
                    prefixIcon: IconButton(
                      onPressed: null,
                      icon: SvgPicture.asset(userIcon),
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.016),
                TextField(
                  obscureText: true,
                  style: const TextStyle(color: kLightTextColor),
                  decoration: InputDecoration(
                    hintText: "Password",
                    prefixIcon: IconButton(
                      onPressed: null,
                      icon: SvgPicture.asset(lockIcon),
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.016),
                TextField(
                  obscureText: true,
                  style: const TextStyle(color: kLightTextColor),
                  decoration: InputDecoration(
                    hintText: "Confirm Password",
                    prefixIcon: IconButton(
                      onPressed: null,
                      icon: SvgPicture.asset(lockIcon),
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.025),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Login()));
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue, // Set the background color to blue
                  ),
                  child: Text(
                    "Sign Up",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
                SizedBox(height: size.height * 0.041),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already member ?\t",
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    CupertinoButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {
                        Navigator.of(context).pushNamedAndRemoveUntil(
                            Login.id, (route) => false);
                      },
                      child: Text(
                        "Sign In",
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall!
                            .copyWith(color: kTextColor),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
