import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_base/core/basic_features.dart';
import 'package:flutter_project_base/features/campaignschedule/campaign_schedule_screen.dart';
import 'package:flutter_project_base/features/dashboard/dashboard.dart';
import 'package:flutter_project_base/features/wrapRemoval/wrap_removal_screen.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class BottomNavBar extends StatelessWidget {
  BottomNavBar({super.key});

  final List<Widget> screens = [
    const Scaffold(),
    CampaignScheduleScreen(),
    Dashboard(),
    const WrapRemovalScreen()
  ];

  final RxInt selectedIndex = 2.obs;
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        extendBody: true,
        bottomNavigationBar: Container(
          height: Dimensions.h90,
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [
              ColorConst.backgroundColor,
              ColorConst.backgroundColor.withOpacity(0.9),
              ColorConst.backgroundColor.withOpacity(0.7),
              ColorConst.backgroundColor.withOpacity(0.4),
              ColorConst.backgroundColor.withOpacity(0.2),
              ColorConst.backgroundColor.withOpacity(0.0),
            ],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          )),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              bottomNavItem(
                  0,
                  Icon(
                    CupertinoIcons.car_detailed,
                    color: ColorConst.whiteColor,
                    size: Dimensions.w20,
                  )),
              bottomNavItem(
                  1,
                  Icon(
                    CupertinoIcons.graph_circle,
                    color: ColorConst.whiteColor,
                    size: Dimensions.w20,
                  )),
              Container(
                height: Dimensions.w90,
                width: Dimensions.w90,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: ColorConst.primaryColorDark,
                ),
                child: Center(
                  child: Container(
                    height: Dimensions.w75,
                    width: Dimensions.w75,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: ColorConst.whiteColor,
                    ),
                    child: Center(
                      child: selectedIndex.value != 1
                          ? Text(
                              AppString.startRide.toUpperCase(),
                              style: fontStyleBold12,
                              textAlign: TextAlign.center,
                            )
                          : Icon(
                              CupertinoIcons.padlock,
                              color: ColorConst.textColor,
                              size: Dimensions.w25,
                            ),
                    ),
                  ),
                ),
              ),
              bottomNavItem(
                  2,
                  Icon(
                    Icons.dashboard_rounded,
                    color: ColorConst.whiteColor,
                    size: Dimensions.w20,
                  )),
              bottomNavItem(
                  3,
                  Icon(
                    CupertinoIcons.settings,
                    color: ColorConst.whiteColor,
                    size: Dimensions.w20,
                  )),
            ],
          ),
        ),
        body: screens[selectedIndex.value],
      ),
    );
  }

  Widget bottomNavItem(int index, Widget icon) {
    return GestureDetector(
      onTap: () {
        selectedIndex.value = index;
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        height: Dimensions.w45,
        width: Dimensions.w45,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: selectedIndex.value == index
                ? ColorConst.primaryColorDark
                : Colors.transparent),
        child: Center(child: icon),
      ),
    );
  }
}
