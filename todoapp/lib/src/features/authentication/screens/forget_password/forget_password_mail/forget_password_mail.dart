import 'package:flutter/material.dart';
import 'package:todoapp/src/common_widgets/form/form_header_widget.dart';
import 'package:todoapp/src/constants/sizes.dart';
import 'package:todoapp/src/constants/text_strings.dart';

import '../../../../../constants/image_strings.dart';

class ForgetPasswordMailScreen extends StatelessWidget {
  const ForgetPasswordMailScreen({Key? key}) : super (key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(tDefaultSize),
          child: Column(
            children: [
              const SizedBox(height: tDefaultSize * 4,),
              const FormHeaderWidget(
                  image: tForgetPasswordImage,
                  subTitle: tForgetMailSubTitle,
                  title: tForgetPassWordTitle,
                crossAxisAlignment: CrossAxisAlignment.center,
                heightBetween: 30.0,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: tFormHeight,),
              Form(
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        label: Text(tEmail),
                        hintText: tEmail,
                      ),
                    )
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