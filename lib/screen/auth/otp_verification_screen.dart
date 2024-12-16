import 'package:flutter/material.dart';
import 'package:gargisbeautyparlor/utils/app_color.dart';
import 'package:gargisbeautyparlor/utils/text_style.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';
import 'package:sizer/sizer.dart';
class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen({super.key});

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: (){
            Get.back();
          },
            child: Icon(Icons.arrow_back,color: ColorsForApp.blackTextColor,)),
        title: Center(
          child: Text("Enter code",style: TextHelper.size12(context).copyWith(
            color: ColorsForApp.blackTextColor,fontWeight: FontWeight.bold
          ),),
        ),
      ),
      body:SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding:  EdgeInsets.only(top: 25.h),
                child: Column(
                  children: [
                    Text("A Code was sent to",style: TextHelper.size12(context).copyWith(
                      color: ColorsForApp.blackTextColor
                    ),),
                    Text("+994503002221",style: TextHelper.size12(context).copyWith(
                        color: ColorsForApp.blackTextColor,fontWeight: FontWeight.bold
                    ),),
                    Text("Edit your number",style: TextHelper.size12(context).copyWith(
                        color: ColorsForApp.blackTextColor
                    ),)

                  ],
                ),
              ),
              SizedBox(height: 5.h),
              Pinput(
                defaultPinTheme:PinTheme(
                width: 13.w,
                height: 6.h,
                textStyle: TextHelper.size14(context).copyWith(color: ColorsForApp.blackTextColor,fontWeight: FontWeight.bold) ,
                decoration: BoxDecoration(
                  border: Border.all(color: ColorsForApp.textFieldColor),
                  borderRadius: BorderRadius.circular(11),
                ),
              ),
                focusedPinTheme:PinTheme(
                  width: 13.w,
                  height: 6.h,
                  textStyle: TextHelper.size14(context).copyWith(color: ColorsForApp.blackTextColor,fontWeight: FontWeight.bold) ,
                  decoration: BoxDecoration(
                    border: Border.all(color: ColorsForApp.primaryButtonColor),
                    borderRadius: BorderRadius.circular(11),
                  ),
                ),
              ),
              SizedBox(height: 5.h),
              Column(
                children: [
                  Text("Did not recieve code?",style: TextHelper.size14(context).copyWith(color: ColorsForApp.blackTextColor),)
                ],
              )
            ],
          )),
    ) ;
  }
}
