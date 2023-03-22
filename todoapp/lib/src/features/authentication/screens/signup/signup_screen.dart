import 'package:flutter/material.dart';
import 'package:todoapp/src/common_widgets/form/form_header_widget.dart';
import 'package:todoapp/src/constants/image_strings.dart';
import 'package:todoapp/src/constants/sizes.dart';
import 'package:todoapp/src/constants/text_strings.dart';
import 'package:todoapp/src/features/authentication/screens/signup/widgets/signup_footer_widget.dart';
import 'package:todoapp/src/features/authentication/screens/signup/widgets/signup_form_widget.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(tDefaultSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FormHeaderWidget(
                    image: tWelcomeScreenImage,
                    subTitle: tSignupSubTitle,
                    title: tSignUpTitle),
                SignUpFormWidget(),
                SignupFooterWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

