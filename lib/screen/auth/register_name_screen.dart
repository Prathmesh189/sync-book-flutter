import 'package:flutter/material.dart';
import 'package:gargisbeautyparlor/utils/app_color.dart';
import 'package:gargisbeautyparlor/widget/common_button.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../routes/routes.dart';
import '../../utils/text_style.dart';

class RegisterNameScreen extends StatefulWidget {
  const RegisterNameScreen({super.key});

  @override
  State<RegisterNameScreen> createState() => _RegisterNameScreenState();
}

class _RegisterNameScreenState extends State<RegisterNameScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: InkWell(
          onTap: (){
           Get.back();
          },
            child: Icon(
          Icons.arrow_back,
          color: ColorsForApp.blackTextColor,
        )),
      ),
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.only(left: 3.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("What is your name?",style: TextHelper.size15(context).copyWith(
                  color: ColorsForApp.blackTextColor
              ),),
              SizedBox(height: 3.h),
              Padding(
                padding: EdgeInsets.only(right: 5.w),
                child: TextField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: ColorsForApp.blackTextColor)
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: ColorsForApp.blackTextColor)
                    )
                  ),
                ),
              ),
              SizedBox(height: 20.h,),
              Padding(
                padding:  EdgeInsets.only(left: 8.w,right: 10.w),
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CommonButton.authCommonButtonWidget(context,
                        text: "Continue",
                        onTap: () {
                          Get.toNamed(Routes.HOME_SCREEN);
                        }),
                  ],
                ),
              )
            ],
          ),
        ),

      ),
    );
  }
}
