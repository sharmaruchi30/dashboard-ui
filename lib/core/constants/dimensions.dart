import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

extension Dimension on double {
  // double height(){
  //   return Platform.isAndroid ? h : this;
  // }
  double get dynamicH => Platform.isAndroid ? h : this;

  double get dynamicW => Platform.isAndroid ? w : this;

  double get dynamicSP => Platform.isAndroid ? sp : this;

  double get dynamicR => Platform.isAndroid ? r : this;
}

class Dimensions {
  //static double height = MediaQuery.of(context).size.height;
  //static double width = MediaQuery.of(context).size.height;

  // final GlobalKey<MediaQuery> navigatorKey =
  // GlobalKey<MediaQuery>();

  static double commonPaddingForScreen = Dimensions.w20;

  static double w1 = 1.0.dynamicW;
  static double w2 = 2.0.dynamicW;
  static double w3 = 3.0.dynamicW;
  static double w4 = 4.0.dynamicW;
  static double w5 = 5.0.dynamicW;
  static double w6 = 6.0.dynamicW;
  static double w7 = 7.0.dynamicW;
  static double w8 = 8.0.dynamicW;
  static double w9 = 9.0.dynamicW;
  static double w10 = 10.0.dynamicW;
  static double w11 = 11.0.dynamicW;
  static double w12 = 12.0.dynamicW;
  static double w13 = 13.0.dynamicW;
  static double w14 = 14.0.dynamicW;
  static double w15 = 15.0.dynamicW;
  static double w16 = 16.0.dynamicW;
  static double w16dot5 = 16.5.dynamicW;
  static double w17 = 17.0.dynamicW;
  static double w18 = 18.0.dynamicW;
  static double w19 = 19.0.dynamicW;
  static double w20 = 20.0.dynamicW;
  static double w21 = 21.0.dynamicW;
  static double w22 = 22.0.dynamicW;
  static double w23 = 23.0.dynamicW;
  static double w24 = 24.0.dynamicW;
  static double w25 = 25.0.dynamicW;
  static double w26 = 26.0.dynamicW;
  static double w27 = 27.0.dynamicW;
  static double w28 = 28.0.dynamicW;
  static double w29 = 29.0.dynamicW;
  static double w30 = 30.0.dynamicW;
  static double w31 = 31.0.dynamicW;
  static double w32 = 32.0.dynamicW;
  static double w33 = 33.0.dynamicW;
  static double w34 = 34.0.dynamicW;
  static double w35 = 35.0.dynamicW;
  static double w36 = 36.0.dynamicW;
  static double w37 = 37.0.dynamicW;
  static double w38 = 38.0.dynamicW;
  static double w39 = 39.0.dynamicW;
  static double w40 = 40.0.dynamicW;
  static double w41 = 41.0.dynamicW;
  static double w42 = 42.0.dynamicW;
  static double w43 = 43.0.dynamicW;
  static double w44 = 44.0.dynamicW;
  static double w45 = 45.0.dynamicW;
  static double w46 = 46.0.dynamicW;
  static double w47 = 47.0.dynamicW;
  static double w48 = 48.0.dynamicW;
  static double w49 = 49.0.dynamicW;
  static double w50 = 50.0.dynamicW;
  static double w51 = 51.0.dynamicW;
  static double w52 = 52.0.dynamicW;
  static double w53 = 53.0.dynamicW;
  static double w54 = 54.0.dynamicW;
  static double w55 = 55.0.dynamicW;
  static double w56 = 56.0.dynamicW;
  static double w57 = 57.0.dynamicW;
  static double w58 = 58.0.dynamicW;
  static double w59 = 59.0.dynamicW;
  static double w60 = 60.0.dynamicW;
  static double w61 = 61.0.dynamicW;
  static double w62 = 62.0.dynamicW;
  static double w63 = 63.0.dynamicW;
  static double w64 = 64.0.dynamicW;
  static double w65 = 65.0.dynamicW;
  static double w66 = 66.0.dynamicW;
  static double w67 = 67.0.dynamicW;
  static double w68 = 68.0.dynamicW;
  static double w69 = 69.0.dynamicW;
  static double w70 = 70.0.dynamicW;
  static double w71 = 71.0.dynamicW;
  static double w72 = 72.0.dynamicW;
  static double w72dot5 = 72.5.dynamicW;
  static double w73 = 73.0.dynamicW;
  static double w74 = 74.0.dynamicW;
  static double w75 = 75.0.dynamicW;
  static double w76 = 76.0.dynamicW;
  static double w77 = 77.0.dynamicW;
  static double w78 = 78.0.dynamicW;
  static double w79 = 79.0.dynamicW;
  static double w80 = 80.0.dynamicW;
  static double w81 = 81.0.dynamicW;
  static double w82 = 82.0.dynamicW;
  static double w83 = 83.0.dynamicW;
  static double w84 = 84.0.dynamicW;
  static double w85 = 85.0.dynamicW;
  static double w86 = 86.0.dynamicW;
  static double w87 = 87.0.dynamicW;
  static double w88 = 88.0.dynamicW;
  static double w89 = 89.0.dynamicW;
  static double w90 = 90.0.dynamicW;
  static double w91 = 91.0.dynamicW;
  static double w92 = 92.0.dynamicW;
  static double w93 = 93.0.dynamicW;
  static double w94 = 94.0.dynamicW;
  static double w95 = 95.0.dynamicW;
  static double w96 = 96.0.dynamicW;
  static double w97 = 97.0.dynamicW;
  static double w98 = 98.0.dynamicW;
  static double w99 = 99.0.dynamicW;
  static double w100 = 100.0.dynamicW;
  static double w105 = 105.0.dynamicW;
  static double w110 = 110.0.dynamicW;
  static double w113 = 113.0.dynamicW;
  static double w120 = 120.0.dynamicW;
  static double w130 = 130.0.dynamicW;
  static double w136 = 136.0.dynamicW;
  static double w140 = 140.0.dynamicW;
  static double w141 = 141.0.dynamicW;
  static double w145 = 145.0.dynamicW;
  static double w150 = 150.0.dynamicW;
  static double w155 = 155.0.dynamicW;
  static double w160 = 160.0.dynamicW;
  static double w165 = 165.0.dynamicW;
  static double w180 = 180.0.dynamicW;
  static double w200 = 200.0.dynamicW;
  static double w213 = 213.0.dynamicW;
  static double w230 = 230.0.dynamicW;
  static double w248 = 248.0.dynamicW;
  static double w256 = 256.0.dynamicW;
  static double w255 = 255.0.dynamicW;
  static double w267 = 267.0.dynamicW;
  static double w275 = 275.0.dynamicW;
  static double w285 = 285.0.dynamicW;
  static double w295 = 295.0.dynamicW;
  static double w300 = 300.0.dynamicW;
  static double w310 = 310.0.dynamicW;
  static double w335 = 335.0.dynamicW;
  static double w340 = 340.0.dynamicW;
  static double w350 = 350.0.dynamicW;
  static double w400 = 400.0.dynamicW;
  static double w500 = 500.0.dynamicW;

  static double h1 = 1.0.dynamicH;
  static double h2 = 2.0.dynamicH;
  static double h3 = 3.0.dynamicH;
  static double h4 = 4.0.dynamicH;
  static double h5 = 5.0.dynamicH;
  static double h6 = 6.0.dynamicH;
  static double h7 = 7.0.dynamicH;
  static double h8 = 8.0.dynamicH;
  static double h9 = 9.0.dynamicH;
  static double h10 = 10.0.dynamicH;
  static double h11 = 11.0.dynamicH;
  static double h12 = 12.0.dynamicH;
  static double h13 = 13.0.dynamicH;
  static double h13_5 = 13.5.dynamicH;
  static double h14 = 14.0.dynamicH;
  static double h15 = 15.0.dynamicH;
  static double h16 = 16.0.dynamicH;
  static double h17 = 17.0.dynamicH;
  static double h18 = 18.0.dynamicH;
  static double h19 = 19.0.dynamicH;
  static double h20 = 20.0.dynamicH;
  static double h21 = 21.0.dynamicH;
  static double h22 = 22.0.dynamicH;
  static double h23 = 23.0.dynamicH;
  static double h24 = 24.0.dynamicH;
  static double h25 = 25.0.dynamicH;
  static double h26 = 26.0.dynamicH;
  static double h27 = 27.0.dynamicH;
  static double h28 = 28.0.dynamicH;
  static double h29 = 29.0.dynamicH;
  static double h30 = 30.0.dynamicH;
  static double h31 = 31.0.dynamicH;
  static double h31dot5 = 31.5.dynamicH;
  static double h32 = 32.0.dynamicH;
  static double h33 = 33.0.dynamicH;
  static double h34 = 34.0.dynamicH;
  static double h35 = 35.0.dynamicH;
  static double h36 = 36.0.dynamicH;
  static double h37 = 37.0.dynamicH;
  static double h38 = 38.0.dynamicH;
  static double h39 = 39.0.dynamicH;
  static double h40 = 40.0.dynamicH;
  static double h41 = 41.0.dynamicH;
  static double h42 = 42.0.dynamicH;
  static double h43 = 43.0.dynamicH;
  static double h44 = 44.0.dynamicH;
  static double h45 = 45.0.dynamicH;
  static double h46 = 46.0.dynamicH;
  static double h47 = 47.0.dynamicH;
  static double h48 = 48.0.dynamicH;
  static double h49 = 49.0.dynamicH;
  static double h50 = 50.0.dynamicH;
  static double h51 = 51.0.dynamicH;
  static double h52 = 52.0.dynamicH;
  static double h53 = 53.0.dynamicH;
  static double h54 = 54.0.dynamicH;
  static double h55 = 55.0.dynamicH;
  static double h56 = 56.0.dynamicH;
  static double h57 = 57.0.dynamicH;
  static double h58 = 58.0.dynamicH;
  static double h59 = 59.0.dynamicH;
  static double h60 = 60.0.dynamicH;
  static double h61 = 61.0.dynamicH;
  static double h62 = 62.0.dynamicH;
  static double h63 = 63.0.dynamicH;
  static double h64 = 64.0.dynamicH;
  static double h65 = 65.0.dynamicH;
  static double h66 = 66.0.dynamicH;
  static double h67 = 67.0.dynamicH;
  static double h68 = 68.0.dynamicH;
  static double h69 = 69.0.dynamicH;
  static double h70 = 70.0.dynamicH;
  static double h71 = 71.0.dynamicH;
  static double h72 = 72.0.dynamicH;
  static double h73 = 73.0.dynamicH;
  static double h74 = 74.0.dynamicH;
  static double h75 = 75.0.dynamicH;
  static double h76 = 76.0.dynamicH;
  static double h77 = 77.0.dynamicH;
  static double h78 = 78.0.dynamicH;
  static double h79 = 79.0.dynamicH;
  static double h80 = 80.0.dynamicH;
  static double h81 = 81.0.dynamicH;
  static double h82 = 82.0.dynamicH;
  static double h83 = 83.0.dynamicH;
  static double h84 = 84.0.dynamicH;
  static double h85 = 85.0.dynamicH;
  static double h86 = 86.0.dynamicH;
  static double h87 = 87.0.dynamicH;
  static double h88 = 88.0.dynamicH;
  static double h89 = 89.0.dynamicH;
  static double h90 = 90.0.dynamicH;
  static double h91 = 91.0.dynamicH;
  static double h92 = 92.0.dynamicH;
  static double h93 = 93.0.dynamicH;
  static double h94 = 94.0.dynamicH;
  static double h95 = 95.0.dynamicH;
  static double h96 = 96.0.dynamicH;
  static double h97 = 97.0.dynamicH;
  static double h98 = 98.0.dynamicH;
  static double h99 = 99.0.dynamicH;
  static double h100 = 100.0.dynamicH;
  static double h105 = 105.0.dynamicH;
  static double h107 = 107.0.dynamicH;
  static double h110 = 110.0.dynamicH;
  static double h111 = 111.0.dynamicH;
  static double h112 = 112.0.dynamicH;
  static double h115 = 115.0.dynamicH;
  static double h120 = 120.0.dynamicH;
  static double h123 = 123.0.dynamicH;
  static double h124 = 124.0.dynamicH;
  static double h130 = 130.0.dynamicH;
  static double h140 = 140.0.dynamicH;
  static double h142 = 142.0.dynamicH;
  static double h150 = 150.0.dynamicH;
  static double h160 = 160.0.dynamicH;
  static double h165 = 165.0.dynamicH;
  static double h170 = 170.0.dynamicH;
  static double h171 = 171.0.dynamicH;
  static double h172 = 172.0.dynamicH;

  static double h181 = 181.0.dynamicH;
  static double h180 = 180.0.dynamicH;
  static double h185 = 185.0.dynamicH;
  static double h190 = 190.0.dynamicH;
  static double h196 = 196.0.dynamicH;
  static double h200 = 200.0.dynamicH;
  static double h204 = 204.0.dynamicH;
  static double h216 = 216.0.dynamicH;
  static double h220 = 220.0.dynamicH;
  static double h240 = 240.0.dynamicH;
  static double h251 = 251.0.dynamicH;
  static double h260 = 260.0.dynamicH;
  static double h270 = 270.0.dynamicH;
  static double h300 = 300.0.dynamicH;
  static double h307 = 307.0.dynamicH;
  static double h335 = 335.0.dynamicH;
  static double h340 = 340.0.dynamicH;
  static double h350 = 350.0.dynamicH;
  static double h400 = 400.0.dynamicH;
  static double h425 = 425.0.dynamicH;
  static double h447 = 447.0.dynamicH;
  static double h500 = 500.0.dynamicH;
  static double h576 = 576.0.dynamicH;

  static double sp6 = 6.0.dynamicSP;
  static double sp7 = 7.0.dynamicSP;
  static double sp8 = 8.0.dynamicSP;
  static double sp10 = 10.0.dynamicSP;
  static double sp11 = 11.0.dynamicSP;
  static double sp12 = 12.0.dynamicSP;
  static double sp13 = 13.0.dynamicSP;
  static double sp14 = 14.0.dynamicSP;
  static double sp15 = 15.0.dynamicSP;
  static double sp16 = 16.0.dynamicSP;
  static double sp17 = 17.0.dynamicSP;
  static double sp18 = 18.0.dynamicSP;
  static double sp19 = 19.0.dynamicSP;
  static double sp20 = 20.0.dynamicSP;
  static double sp21 = 21.0.dynamicSP;
  static double sp22 = 22.0.dynamicSP;
  static double sp23 = 23.0.dynamicSP;
  static double sp24 = 24.0.dynamicSP;
  static double sp25 = 25.0.dynamicSP;
  static double sp26 = 26.0.dynamicSP;
  static double sp28 = 28.0.dynamicSP;
  static double sp30 = 30.0.dynamicSP;
  static double sp32 = 32.0.dynamicSP;
  static double sp36 = 36.0.dynamicSP;
  static double sp38 = 38.0.dynamicSP;
  static double sp42 = 42.0.dynamicSP;
  static double sp56 = 56.0.dynamicSP;
  static double sp68 = 68.0.dynamicSP;
  static double sp72 = 72.0.dynamicSP;
  static double sp74 = 74.0.dynamicSP;
  static double sp80 = 80.0.dynamicSP;
  static double sp90 = 90.0.dynamicSP;
  static double sp100 = 100.0.dynamicSP;
  static double sp200 = 200.0.dynamicSP;
  static double sp300 = 300.0.dynamicSP;

  static double r2 = 2.0.dynamicR;
  static double r3 = 3.0.dynamicR;
  static double r4 = 4.0.dynamicR;
  static double r5 = 5.0.dynamicR;
  static double r6 = 6.0.dynamicR;
  static double r7 = 7.0.dynamicR;
  static double r8 = 8.0.dynamicR;
  static double r9 = 9.0.dynamicR;
  static double r10 = 10.0.dynamicR;
  static double r11 = 11.0.dynamicR;
  static double r12 = 12.0.dynamicR;
  static double r13 = 13.0.dynamicR;
  static double r14 = 14.0.dynamicR;
  static double r15 = 15.0.dynamicR;
  static double r16 = 16.0.dynamicR;
  static double r17 = 17.0.dynamicR;
  static double r18 = 18.0.dynamicR;
  static double r19 = 19.0.dynamicR;
  static double r20 = 20.0.dynamicR;
  static double r21 = 21.0.dynamicR;
  static double r22 = 22.0.dynamicR;
  static double r24 = 24.0.dynamicR;
  static double r25 = 25.0.dynamicR;
  static double r26 = 26.0.dynamicR;
  static double r28 = 28.0.dynamicR;
  static double r29 = 29.0.dynamicR;
  static double r30 = 30.0.dynamicR;
  static double r32 = 32.0.dynamicR;
  static double r33 = 33.0.dynamicR;
  static double r35 = 35.0.dynamicR;
  static double r38 = 38.0.dynamicR;
  static double r40 = 40.0.dynamicR;
  static double r45 = 45.0.dynamicR;
  static double r50 = 50.0.dynamicR;
  static double r55 = 55.0.dynamicR;
  static double r60 = 60.0.dynamicR;
  static double r64 = 64.0.dynamicR;
  static double r66 = 66.0.dynamicR;
  static double r68 = 68.0.dynamicR;
  static double r70 = 70.0.dynamicR;
  static double r75 = 75.0.dynamicR;
  static double r76 = 76.0.dynamicR;
  static double r80 = 80.0.dynamicR;
  static double r85 = 85.0.dynamicR;
  static double r86 = 86.0.dynamicR;
  static double r87 = 87.0.dynamicR;
  static double r90 = 90.0.dynamicR;
  static double r100 = 100.0.dynamicR;
  static double r110 = 110.0.dynamicR;
  static double r120 = 120.0.dynamicR;
  static double r130 = 130.0.dynamicR;
  static double r140 = 140.0.dynamicR;
  static double r141 = 141.0.dynamicR;
  static double r150 = 150.0.dynamicR;
  static double r152 = 152.0.dynamicR;
  static double r180 = 180.0.dynamicR;
  static double r200 = 300.0.dynamicR;
  static double r300 = 300.0.dynamicR;
  static double r335 = 335.0.dynamicR;
  static double r340 = 340.0.dynamicR;
  static double r350 = 350.0.dynamicR;
  static double r400 = 400.0.dynamicR;
  static double r500 = 500.0.dynamicR;

  static double getSafeAreaBottomHeight() {
    return MediaQuery.of(Get.context!).padding.bottom;

    // return Platform.isAndroid
    //     ? MediaQuery.of(Get.context!).padding.bottom
    //     : 12;
  }

  static double getBottomButtonHeight() {
    return 52.0 + MediaQuery.of(Get.context!).padding.bottom;
  }

  static double getImagePaddingFromTopHeight() {
    return h20 + MediaQuery.of(Get.context!).padding.top;
  }

  static double getSafeAreaTopHeight() {
    return MediaQuery.of(Get.context!).padding.top;
  }

  static double bottomPadding() {
    return buttonHeight() + MediaQuery.of(Get.context!).padding.bottom;
  }

  static double screenWidth() {
    return MediaQuery.of(Get.context!).size.width;
  }

  static double screenHeight() {
    return MediaQuery.of(Get.context!).size.height;
  }

  static double getKeyBoardHeight() {
    return MediaQuery.of(Get.context!).viewInsets.bottom;
  }

  static double buttonHeight() {
    return AppBar().preferredSize.height;
  }
}
