import 'package:flutter/material.dart';
import 'package:gargisbeautyparlor/routes/routes.dart';
import 'package:gargisbeautyparlor/utils/app_color.dart';
import 'package:gargisbeautyparlor/widget/common_button.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:sizer/sizer.dart';

import '../../utils/text_style.dart';
class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding:  EdgeInsets.only(top: 23.h),
                child: Column(
                  children: [
                    Text("Enter your number",style: TextHelper.size18(context).copyWith(
                        color: ColorsForApp.blackTextColor,fontWeight: FontWeight.bold
                    ),)
                  ],
                ),
              ),
              SizedBox(height: 5.h,),
              Padding(
                padding: EdgeInsets.only(left: 10.w,right: 10.w),
                child: Column(
                  children: [
                    IntlPhoneField(
                      keyboardType: TextInputType.phone,
                      initialCountryCode: "AZ",
                      decoration: InputDecoration(
                        hintText: "+994 503002221",
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: ColorsForApp.primaryButtonColor)
                          )
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.h,),
              Column(
                children: [
                  CommonButton.authCommonButtonWidget(context,
                      text: "Sign In",
                        onTap: () {
                        Get.toNamed(Routes.OTP_VERIFICATION_SCREEN);
                        })
                ],
              )
            ],
          )),
    );
  }
}
