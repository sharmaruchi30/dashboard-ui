import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_base/core/basic_features.dart';
import 'package:flutter_project_base/custom/clip_shadow_path.dart';
import 'package:flutter_project_base/custom/custom_clip_card.dart';
import 'package:get/get.dart';

class DetailsTab extends StatelessWidget {
  const DetailsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Transform(
      alignment: Alignment.center,
      transform: Matrix4.identity()..scale(-1.0, 1.0, 1.0),
      child: ClipShadowPath(
        shadow: const BoxShadow(
            color: Colors.black26, spreadRadius: 20, blurRadius: 12),
        clipper: CustomClipCard(),
        child: Container(
          width: Get.width,
          height: Get.height * 0.68,
          decoration: BoxDecoration(
              color: const Color(0xffeef0f0),
              borderRadius: BorderRadius.circular(
                Dimensions.r25,
              )),
          child: Transform(
            alignment: Alignment.center,
            transform: Matrix4.identity()..scale(-1.0, 1.0, 1.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: Dimensions.h20,
                      left: Dimensions.w20,
                      right: Dimensions.w20),
                  child: Column(
                    children: [
                      Text(
                        AppString.dashboard,
                        style: fontStyleMedium26.apply(
                            color: ColorConst.textColorLight),
                      ),
                      Text(
                        AppString.monthlyGoal,
                        style: fontStyleSemiBold12.apply(
                            color: ColorConst.textColorExtraLight),
                      ),
                      SizedBox(
                        height: Dimensions.h20,
                      ),
                      Container(
                        height: Dimensions.w180,
                        width: Dimensions.w180,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black12,
                                  spreadRadius: 1,
                                  blurRadius: 12)
                            ]),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            SizedBox(
                              height: Dimensions.w160,
                              width: Dimensions.w160,
                              child: const CircularProgressIndicator(
                                color: ColorConst.primaryColor,
                                backgroundColor: ColorConst.greyColor,
                                value: 0.25,
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "160",
                                  style: fontStyleRegular38,
                                ),
                                Text(
                                  AppString.hours,
                                  style: fontStyleSemiBold12.apply(
                                      color: ColorConst.primaryColor),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: Dimensions.w20,
                            vertical: Dimensions.h10),
                        decoration: const BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  color: ColorConst.greyColor, width: 0.8)),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Icon(
                                  CupertinoIcons.time,
                                  color: ColorConst.primaryColor,
                                  size: Dimensions.w20,
                                ),
                                Text(
                                  "45",
                                  style: fontStyleMedium22,
                                ),
                                Text(
                                  AppString.totalHours,
                                  style: fontStyleMedium10.apply(
                                      color: ColorConst.textColorExtraLight),
                                )
                              ],
                            ),
                            SizedBox(
                              height: Dimensions.h35,
                              child: const VerticalDivider(
                                color: ColorConst.greyColor,
                                thickness: 0.8,
                              ),
                            ),
                            Column(
                              children: [
                                Icon(
                                  Icons.wallet,
                                  color: ColorConst.primaryColor,
                                  size: Dimensions.w20,
                                ),
                                Text(
                                  "1,7k",
                                  style: fontStyleMedium22,
                                ),
                                Text(
                                  AppString.totalEarned,
                                  style: fontStyleMedium10.apply(
                                      color: ColorConst.textColorExtraLight),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: Dimensions.h20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          for (int index = 0;
                              index < AppString.weeksList.length;
                              index++)
                            Container(
                              height: Dimensions.h50,
                              width: Dimensions.w35,
                              decoration: BoxDecoration(
                                  color: index == 3
                                      ? Colors.white
                                      : index == 1
                                          ? ColorConst.greyColor
                                              .withOpacity(0.3)
                                          : Colors.transparent,
                                  borderRadius:
                                      BorderRadius.circular(Dimensions.r8),
                                  boxShadow: index == 3
                                      ? [
                                          const BoxShadow(
                                              color: ColorConst.greyColor,
                                              offset: Offset(0, 1),
                                              spreadRadius: 0.8,
                                              blurRadius: 2)
                                        ]
                                      : []),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  index != 6
                                      ? Text(
                                          (index + 7).toString(),
                                          style: fontStyleMedium18.apply(
                                              color: index == 3
                                                  ? ColorConst.textColor
                                                  : index == 1
                                                      ? ColorConst.primaryColor
                                                      : ColorConst
                                                          .textColorExtraLight),
                                        )
                                      : Container(
                                          height: Dimensions.w21,
                                          width: Dimensions.w8,
                                          decoration: const BoxDecoration(
                                              color: ColorConst.primaryColor,
                                              shape: BoxShape.circle),
                                        ),
                                  Text(AppString.weeksList[index],
                                      style: fontStyleBold10.apply(
                                          color:
                                              ColorConst.textColorExtraLight))
                                ],
                              ),
                            )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
