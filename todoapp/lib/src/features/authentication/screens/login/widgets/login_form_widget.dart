import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:todoapp/src/features/authentication/screens/task_list/widgets/homepage.dart';

import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_strings.dart';
import '../../forget_password/forget_password_options/forget_password_btn_widget.dart';
import '../../forget_password/forget_password_options/forget_password_model_bottom_sheet.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: tFormHeight - 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.person_outline_outlined),
                  labelText: tEmail,
                  hintText: tEmail,
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: tFormHeight - 20,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.fingerprint),
                    labelText: tPassword,
                    hintText: tPassword,
                    border: OutlineInputBorder(),
                    suffixIcon: IconButton(
                      onPressed: null,
                      icon: Icon(Icons.remove_red_eye_sharp),
                    )),
              ),
              const SizedBox(
                height: tFormHeight - 20,
              ),

              Align(
                  alignment: Alignment.centerRight,
                  child:
                  TextButton(onPressed: () {
                    ForgetPasswordScreen.buildShowModalBottomSheet(context);
                  },
                      child: Text(tForgetPassword)
                  )
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                    Get.to(() => MyHomePage());
                  },
                  child: Text(tLogin.toUpperCase()),
                ),
              ),
            ],
          ),
        ));
  }


}
