
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gargisbeautyparlor/utils/app_color.dart';
import 'package:gargisbeautyparlor/utils/text_style.dart';
import 'package:sizer/sizer.dart';

class AuthWidget {
  AuthWidget._();

  static Widget authCommonButtonWidget(BuildContext context, {required String text,required Function() onTap,})
  {
    return InkWell(
      onTap:onTap??(){
      },
      child: Container(
        height: 6.h,
        width: 75.w,
        decoration: BoxDecoration(color: ColorsForApp.primaryButtonColor,borderRadius: BorderRadius.circular(5)),
        child: Center(
          child: Text(text,style: TextHelper.size12(context).copyWith(
            color: ColorsForApp.buttonTextColor,fontWeight: FontWeight.bold
          ),),
        ),
      ),
    );
  }
}
