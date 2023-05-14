

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:todoapp/src/constants/sizes.dart';
import 'package:todoapp/src/constants/text_strings.dart';
import 'package:todoapp/src/features/authentication/controllers/otp_controller.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var otp;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
              padding: const EdgeInsets.all(tDefaultSize),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(tOtpTitle, style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.bold,
                  fontSize: 80.0,
                ),),
                Text(tOtpSubTitle.toUpperCase(), style: Theme.of(context).textTheme.headline6,),
                const SizedBox(height: 40.0,),
                const Text("$tOtpMessage support@CH.com", textAlign: TextAlign.center,),
                const SizedBox(height: 20.0,),
                OTPTextField(
                  length: 6,
                  width: MediaQuery.of(context).size.width,
                  textFieldAlignment: MainAxisAlignment.spaceAround,
                  fieldWidth: 45,
                  fieldStyle: FieldStyle.box,
                  outlineBorderRadius: 15,
                  style: TextStyle(fontSize: 17),
                  onCompleted: (code) {
                    otp = code;
                    OTPController.instance.verifyOTP(otp);
                  },
                ),
                const SizedBox(height: 20.0,),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(onPressed: () {
                    OTPController.instance.verifyOTP(otp);
                  }, child: const Text(tNext),),
                )
              ],
            ),
          ),
        )
      ),
    );
  }
}