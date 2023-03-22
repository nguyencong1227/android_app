import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:todoapp/src/features/authentication/screens/forget_password/forget_password_mail/forget_password_mail.dart';

import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_strings.dart';
import 'forget_password_btn_widget.dart';

class ForgetPasswordScreen{
  static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        builder: (context) =>
            Container(
              padding: const EdgeInsets.all(tDefaultSize),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(tForgetPassWordTitle, style: Theme.of(context).textTheme.headline5,),
                  Text(tForgetPassWordSubTitle, style: Theme.of(context).textTheme.bodyText2,),
                  const SizedBox(height: 30.0,),
                  ForgetPasswordBtnWidget(
                    btnIcon: Icons.mail_outline_rounded,
                    title: tEmail,
                    subTitle: tResetViaEmail,
                    onTap: () {
                      Navigator.pop(context);
                      Get.to(() => const ForgetPasswordMailScreen());
                    },
                  ),
                  const SizedBox(height: 20.0,),
                  ForgetPasswordBtnWidget(
                    btnIcon: Icons.mobile_friendly_rounded,
                    title: tPhoneNo,
                    subTitle: tResetViaPhone,
                    onTap: () {},
                  ),

                ],
              ),
            )
    );
  }
}