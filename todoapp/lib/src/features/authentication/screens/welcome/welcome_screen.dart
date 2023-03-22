import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:todoapp/src/common_widgets/fade_in_animation/animation_design.dart';
import 'package:todoapp/src/common_widgets/fade_in_animation/fade_in_animation_model.dart';
import 'package:todoapp/src/constants/colors.dart';
import 'package:todoapp/src/constants/image_strings.dart';
import 'package:todoapp/src/constants/sizes.dart';
import 'package:todoapp/src/constants/text_strings.dart';
import 'package:todoapp/src/features/authentication/screens/login/login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {


    var mediaQuery = MediaQuery.of(context);
    var height = mediaQuery.size.height;
    var brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;


    return Scaffold(
      backgroundColor: isDarkMode ? tSecondaryColor : tPrimaryColor,
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.all(tDefaultSize),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image(image: const AssetImage(tWelcomeScreenImage), height: height * 0.6),
                Column(
                  children: [
                    Text(tWelcomeTitle, style: Theme.of(context).textTheme.headline3),
                    Text(tWelcomeSubTitle,
                        style: Theme.of(context).textTheme.bodyText1,
                        textAlign: TextAlign.center),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () => Get.to(() => const LoginScreen()),
                        child: Text(tLogin.toUpperCase()),
                      ),
                    ),
                    const SizedBox(width: 10.0),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(tSignup.toUpperCase()),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}