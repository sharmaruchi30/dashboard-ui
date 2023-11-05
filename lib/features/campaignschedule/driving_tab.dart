import 'package:flutter/material.dart';
import 'package:flutter_project_base/core/basic_features.dart';
import 'package:flutter_project_base/custom/clip_shadow_path.dart';
import 'package:flutter_project_base/custom/custom_clip_card_small.dart';
import 'package:get/get.dart';

class DrivingTab extends StatelessWidget {
  const DrivingTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipShadowPath(
      shadow: const BoxShadow(
          color: Colors.black26, spreadRadius: 20, blurRadius: 12),
      clipper: CustomClipCardSmall(),
      child: Container(
        height: Get.height * 0.4,
        width: Get.width,
        decoration: BoxDecoration(
            color: const Color(0xffeef0f0),
            borderRadius: BorderRadius.circular(Dimensions.r25)),
        child: Padding(
          padding: EdgeInsets.all(Dimensions.commonPaddingForScreen),
          child: GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 35,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 7,
                childAspectRatio: 1,
                mainAxisSpacing: Dimensions.w5,
                crossAxisSpacing: Dimensions.w5),
            itemBuilder: (context, index) => index < 7
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        AppString.weeksList[index],
                        style: fontStyleMedium10,
                      ),
                    ],
                  )
                : Container(
                    decoration: BoxDecoration(
                        color: DateTime.now().day == (index - 6)
                            ? ColorConst.primaryColor
                            : (index - 6) < DateTime.now().day
                                ? ColorConst.greyColor
                                : Colors.white,
                        borderRadius: BorderRadius.circular(Dimensions.r5),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade300,
                              blurRadius: 1,
                              spreadRadius: 1)
                        ]),
                    child: Center(
                      child: Text(
                        (index - 6).toString(),
                        style: DateTime.now().day == (index - 6)
                            ? fontStyleMedium12.apply(
                                color: ColorConst.whiteColor)
                            : fontStyleMedium12,
                      ),
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}
