import 'package:flutter/material.dart';
import 'package:todoapp/src/constants/image_strings.dart';
import 'package:todoapp/src/constants/sizes.dart';
import 'package:todoapp/src/constants/text_strings.dart';

import '../../../../common_widgets/form/form_header_widget.dart';
import 'widgets/login_footer_widget.dart';
import 'widgets/login_form_widget.dart';
import 'widgets/login_header_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
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
                  title: tLoginTitle,
                  subTitle: tLoginSubTitle,
                ),
                const LoginForm(),
                const LoginFooterWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


