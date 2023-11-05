import 'package:flutter/material.dart';
import 'package:flutter_project_base/core/basic_features.dart';
import 'package:flutter_project_base/custom/clip_shadow_path.dart';
import 'package:flutter_project_base/custom/custom_clip_card_small.dart';
import 'package:get/get.dart';

class CarWrapTab extends StatelessWidget {
  const CarWrapTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Transform(
      alignment: Alignment.center,
      transform: Matrix4.identity()..scale(-1.0, 1.0, 1.0),
      child: ClipShadowPath(
        shadow: const BoxShadow(
            color: Colors.black26, spreadRadius: 20, blurRadius: 12),
        clipper: CustomClipCardSmall(),
        child: Container(
          height: Get.height * 0.4,
          width: Get.width,
          padding: EdgeInsets.all(Dimensions.commonPaddingForScreen),
          decoration: BoxDecoration(
              color: ColorConst.primaryColorLight,
              borderRadius: BorderRadius.circular(Dimensions.r25)),
          child: Transform(
            alignment: Alignment.center,
            transform: Matrix4.identity()..scale(-1.0, 1.0, 1.0),
            child: Column(
              children: [
                Text(
                  AppString.carWrap.toUpperCase(),
                  style: fontStyleMedium16.apply(color: ColorConst.whiteColor),
                ),
                SizedBox(
                  height: Dimensions.h5,
                ),
                Text(
                  AppString.dummyText,
                  style: fontStyleRegular12.apply(color: Colors.white38),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: Dimensions.h15,
                ),
                Icon(
                  Icons.wallet_rounded,
                  color: ColorConst.primaryColorDark,
                  size: Dimensions.w25,
                ),
                SizedBox(
                  height: Dimensions.h5,
                ),
                Text(
                  "\$50",
                  style: fontStyleMedium26.apply(color: ColorConst.whiteColor),
                ),
                SizedBox(
                  height: Dimensions.h8,
                ),
                Text(
                  "Self unwrap bonus",
                  style: fontStyleSemiBold12.apply(
                      color: ColorConst.primaryColorDark),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
