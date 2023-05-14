import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:intl/intl.dart';
import 'package:todoapp/src/constants/text_strings.dart';

import '../../../controllers/signup_controller.dart';

class DatePickerWidget extends StatefulWidget{
  const DatePickerWidget({Key? key}) : super(key: key);

  @override
  State<DatePickerWidget> createState() => DatePickerState();
}

class DatePickerState extends State<DatePickerWidget> {

  final controller = Get.put(SignUpController());
  final _formkey = GlobalKey<FormState>();
  DateTime selectedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          TextFormField(
            controller: controller.birthday,
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.calendar_today_outlined),
              labelText: tBirthday,
            ),
            onTap: () async {
              DateTime? pickeddate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2101),
              );
              if (pickeddate != null && pickeddate != selectedDate)
                setState(() {
                  selectedDate = pickeddate;
                });
            },
          )
        ],
      ),
    );
  }
}