import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_base/core/basic_features.dart';
import 'package:flutter_project_base/features/dashboard/details_tab.dart';
import 'package:flutter_project_base/features/dashboard/history_tab.dart';
import 'package:get/get.dart';

class Dashboard extends StatelessWidget {
  Dashboard({super.key});

  final RxBool right = true.obs;

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
          AppString.campaignDashboard.toUpperCase(),
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
                        const HistoryTab(),
                        const DetailsTab(),
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
                                  AppString.details.toUpperCase(),
                                  style: fontStyleBold12,
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
                                  AppString.history.toUpperCase(),
                                  style: fontStyleBold12.apply(
                                      color: ColorConst.whiteColor),
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
                        const DetailsTab(),
                        const HistoryTab(),
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
                                  AppString.details.toUpperCase(),
                                  style: fontStyleBold12,
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
                                  AppString.history.toUpperCase(),
                                  style: fontStyleBold12.apply(
                                      color: ColorConst.whiteColor),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
