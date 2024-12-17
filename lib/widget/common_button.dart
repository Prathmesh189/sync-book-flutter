import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gargisbeautyparlor/utils/text_style.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../routes/routes.dart';
import '../utils/app_color.dart';

class CommonButton {
  CommonButton._();

  static Widget authCommonButtonWidget(BuildContext context, {required String text,required Function() onTap,})
  {
    return InkWell(
      onTap:onTap??(){
      },
      child: Container(
        height: 6.h,
        width: 80.w,
        decoration: BoxDecoration(color: ColorsForApp.primaryButtonColor,borderRadius: BorderRadius.circular(5)),
        child: Center(
          child: Text(text,style: TextHelper.size12(context).copyWith(
              color: ColorsForApp.buttonTextColor,fontWeight: FontWeight.bold
          ),),
        ),
      ),
    );
  }
   static Widget authCommonContainerButton(BuildContext context ,{required String text,required Color color,required Function() onTap})
   {
     return InkWell(
       onTap:onTap??(){} ,
       child: Container(
         height:6.h,
         width: 28.w,
         decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(11),
             border: Border.all(color:color)
         ),
         child: Center(
             child: Text(text,
               style: TextHelper.size12(context).copyWith(
                   color: ColorsForApp.primaryButtonColor,fontWeight: FontWeight.bold
               ),
             )),
       ),
     );
   }
}
