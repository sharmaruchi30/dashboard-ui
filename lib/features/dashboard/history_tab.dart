import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_base/core/basic_features.dart';
import 'package:flutter_project_base/custom/clip_shadow_path.dart';
import 'package:flutter_project_base/custom/custom_clip_card.dart';
import 'package:flutter_project_base/custom/inner_shadow.dart';
import 'package:get/get.dart';

class HistoryTab extends StatelessWidget {
  const HistoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipShadowPath(
      shadow: const BoxShadow(
          color: Colors.black26, spreadRadius: 20, blurRadius: 12),
      clipper: CustomClipCard(),
      child: Container(
          width: Get.width,
          height: Get.height * 0.68,
          decoration: BoxDecoration(
              color: ColorConst.primaryColorLight,
              borderRadius: BorderRadius.circular(Dimensions.r25)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: Get.width,
                padding: EdgeInsets.only(
                    top: Dimensions.h20,
                    left: Dimensions.w20,
                    right: Dimensions.w20),
                child: Column(
                  children: [
                    Text(
                      AppString.history,
                      style:
                          fontStyleMedium26.apply(color: ColorConst.whiteColor),
                    ),
                    SizedBox(
                      height: Dimensions.h5,
                    ),
                    Text(
                      AppString.browseHistory,
                      style: fontStyleSemiBold12.apply(
                          color: ColorConst.textColorExtraLight),
                    ),
                    SizedBox(
                      height: Get.height * 0.5,
                      child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        itemCount: 6,
                        itemBuilder: (context, index) => InnerShadow(
                          blur: 5,
                          color: Colors.black12,
                          offset: const Offset(5, 5),
                          child: Container(
                            height: Dimensions.h60,
                            width: double.infinity,
                            margin:
                                EdgeInsets.symmetric(vertical: Dimensions.h5),
                            decoration: BoxDecoration(
                              color: ColorConst.primaryColorDark,
                              borderRadius:
                                  BorderRadius.circular(Dimensions.r12),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      (index + 1).toString(),
                                      style: fontStyleMedium18.apply(
                                          color: Colors.white),
                                    ),
                                    Text(
                                      AppString.weeksList[index],
                                      style: fontStyleMedium14.apply(
                                          color: Colors.white38),
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      CupertinoIcons.time,
                                      size: Dimensions.w15,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      height: Dimensions.h3,
                                    ),
                                    Text(
                                      "45",
                                      style: fontStyleMedium14.apply(
                                          color: Colors.white),
                                    ),
                                    Text(
                                      AppString.totalHours,
                                      style: fontStyleMedium10.apply(
                                          color: Colors.white38),
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      CupertinoIcons.time,
                                      size: Dimensions.w15,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      height: Dimensions.h3,
                                    ),
                                    Text(
                                      "1.76k",
                                      style: fontStyleMedium14.apply(
                                          color: Colors.white),
                                    ),
                                    Text(
                                      AppString.totalEarned,
                                      style: fontStyleMedium10.apply(
                                          color: Colors.white38),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
