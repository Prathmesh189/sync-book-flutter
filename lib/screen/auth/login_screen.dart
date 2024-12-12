import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../controller/auth_controller.dart';
import '../../generator/assets.dart';
import '../../utils/app_color.dart';
import '../../utils/text_style.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final AuthController changeColor=Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Sizer(builder: (context, orientation, deviceType) {
      return Column(
        children: [
          ClipPath(
            clipper: CustomImageClipper(),
            child: Container(
                height: 58.h,
                width: 100.w,
                decoration: BoxDecoration(
                  color: ColorsForApp.primaryButtonColor,
                ),
                child: Image.asset(
                  Assets.welcomeImage,
                  fit: BoxFit.fill,
                )),
          ),
          SizedBox(height: 4.h,),
          Container(
            child: Column(
              children: [
                Text("Welcome To",style: TextHelper.size22(context).
                copyWith(color: ColorsForApp.primaryButtonColor,
                    fontWeight: FontWeight.bold),),
                Text("Gargi,s Beauty Salon",style: TextHelper.size22(context).
                copyWith(color: ColorsForApp.primaryButtonColor,
                    fontWeight: FontWeight.bold),),

                SizedBox(height: 11.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buildContainerButton(
                      text: "Login",
                      color: Colors.white,
                    ),
                    buildContainerButton(
                      text: "Get Started",
                    )

                  ],
                )
              ],
            ),
          )
        ],
      );

    }));
  }
  Widget buildContainerButton({
    Key? key,
    double? height,
    double? width,
    Color? color,
    String? text,
  }) {
    return GestureDetector(
        onTapDown: (_) => changeColor.changeBorderColor(ColorsForApp.buttonTextColor),
        onTapUp: (_) {

          changeColor.changeBorderColor(ColorsForApp.primaryButtonColor);
          //Get.to(() => RegisterScreen()); // Navigate to the next screen
        },
        child: Container(
          height: height ?? 6.h,
          width: width ?? 28.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(11),
            //border: Border.all(color:color?? ColorsForApp.primaryButtonColor)
          ),
          child: Center(
              child: Text(
                text ?? "Data",
                style: TextHelper.size12(context).copyWith(
                    color: ColorsForApp.primaryButtonColor,fontWeight: FontWeight.bold
                ),
              )),
        )

    );
  }

}

class CustomImageClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 95);
    path.quadraticBezierTo(size.width / 4, size.height, size.width / 2,
        size.height);
    path.quadraticBezierTo(size.width - 88, size.height, size.width,
        size.height - 88);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
