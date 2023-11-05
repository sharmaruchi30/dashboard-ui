import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_base/core/basic_features.dart';
import 'package:flutter_project_base/custom/inner_shadow.dart';
import 'package:flutter_project_base/features/campaignschedule/car_wrap_tab.dart';
import 'package:flutter_project_base/features/campaignschedule/driving_tab.dart';
import 'package:get/get.dart';

class CampaignScheduleScreen extends StatelessWidget {
  CampaignScheduleScreen({super.key});

  final RxBool right = false.obs;

  void rightTop() {
    right.value = true;
  }

  void leftTop() {
    right.value = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppString.campaignschedule.toUpperCase(),
          style: fontStyleMedium12.apply(color: ColorConst.whiteColor),
        ),
        leading: IconButton(
          splashRadius: Dimensions.r20,
          onPressed: () {},
          icon: Icon(
            CupertinoIcons.back,
            size: Dimensions.w20,
          ),
        ),
        actions: [
          IconButton(
            splashRadius: Dimensions.r20,
            onPressed: () {},
            icon: Icon(
              CupertinoIcons.person_fill,
              size: Dimensions.w20,
            ),
          ),
        ],
      ),
      body: Obx(
        () => Column(
          children: [
            Container(
              padding: EdgeInsets.all(Dimensions.commonPaddingForScreen),
              child: right.value
                  ? Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        const DrivingTab(),
                        const CarWrapTab(),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: GestureDetector(
                            onTap: rightTop,
                            child: Container(
                              height: Dimensions.h52,
                              width: Get.width / 2 - Dimensions.w20,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(Dimensions.r12)),
                              child: Center(
                                child: Text(
                                  AppString.carWrap.toUpperCase(),
                                  style: fontStyleBold12.apply(
                                      color: ColorConst.whiteColor),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          child: GestureDetector(
                            onTap: leftTop,
                            child: Container(
                              height: Dimensions.h52,
                              width: Get.width / 2 - Dimensions.w20,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(Dimensions.r12)),
                              child: Center(
                                child: Text(
                                  AppString.driving.toUpperCase(),
                                  style: fontStyleBold12,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  : Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        const CarWrapTab(),
                        const DrivingTab(),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: GestureDetector(
                            onTap: rightTop,
                            child: Container(
                              height: Dimensions.h52,
                              width: Get.width / 2 - Dimensions.w20,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(Dimensions.r12)),
                              child: Center(
                                child: Text(
                                  AppString.carWrap.toUpperCase(),
                                  style: fontStyleBold12.apply(
                                      color: ColorConst.whiteColor),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          child: GestureDetector(
                            onTap: leftTop,
                            child: Container(
                              height: Dimensions.h52,
                              width: Get.width / 2 - Dimensions.w20,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(Dimensions.r12)),
                              child: Center(
                                child: Text(
                                  AppString.driving.toUpperCase(),
                                  style: fontStyleBold12,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
            ),
            Expanded(
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: 4,
                itemBuilder: (context, index) => InnerShadow(
                  color: Colors.white12,
                  blur: 5,
                  offset: const Offset(1, 1),
                  child: Container(
                    height: Dimensions.h70,
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(
                        vertical: Dimensions.h5,
                        horizontal: Dimensions.commonPaddingForScreen),
                    decoration: BoxDecoration(
                        color: ColorConst.primaryColorLight,
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 5,
                              spreadRadius: 2)
                        ],
                        borderRadius: BorderRadius.circular(Dimensions.r30)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: Dimensions.w8,
                          width: Dimensions.w8,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: ColorConst.whiteColor),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "How to remove wrap?",
                              style: fontStyleMedium14.apply(
                                  color: ColorConst.whiteColor),
                            ),
                            Text(
                              "Step by step guide ",
                              style: fontStyleMedium12.apply(
                                  color: Colors.white38),
                            ),
                          ],
                        ),
                        Icon(
                          CupertinoIcons.arrow_right,
                          size: Dimensions.w20,
                          color: ColorConst.whiteColor,
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
    );
  }
}
