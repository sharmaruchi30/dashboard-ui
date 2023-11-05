import 'dart:io';
import 'dart:math';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:flutter_app_version_checker/flutter_app_version_checker.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:url_launcher/url_launcher.dart';
import 'package:uuid/uuid.dart';

import '../basic_features.dart';

Future<void> gotoScreen(Widget screen) async {
  var data = await navigateToPage(screen);
  if (data != null) {}
}

class Const {
  static InputFormatter inputFormatter = InputFormatter();
  static RegExpression regExpression = RegExpression();
  static String packageName = 'com.hypnomeditation';
  static DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();
  // static AppCheckerResult? appVersion;
  static AndroidDeviceInfo? androidInfo;
  static IosDeviceInfo? iosInfo;
  static String platform = Platform.isAndroid ? "Android" : "iOS";

  static Future<void> config() async {
    if (Platform.isAndroid) {
      androidInfo = await deviceInfoPlugin.androidInfo;
    } else {
      iosInfo = await deviceInfoPlugin.iosInfo;
    }
  }

  static String getDuration(Duration duration) {
    final int hours = duration.inHours.toString().length;
    return duration.inHours > 0
        ? hours == 1
            ? duration.toString().substring(0, 7)
            : duration.toString().substring(0, 8)
        : duration.toString().substring(2, 7);
  }

  // static checkUpdates() async {
  //   final checker = AppVersionChecker(
  //     appId: packageName,
  //   );
  //   appVersion = await checker.checkUpdate();
  //   if (kDebugMode) {
  //     print('App Version $appVersion');
  //   }
  // }

  static String emailPattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

  static Pattern phonePattern = r'(^[0-9 ]*$)';

  static String getUniqueName() {
    var uuid = const Uuid();
    return uuid.v4();
  }

  static String getCurrentDateInYMDTHMS() {
    DateTime date = DateTime.now();
    DateFormat format = DateFormat("yyyy-MM-ddTHH:mm:ss");
    String formattedDate = format.format(date);
    return formattedDate;
  }

  static String convertDateTimeToMDYHMSA(String date) {
    DateTime dateTime = DateTime.parse(date);
    String formattedDate = DateFormat('M/d/yyyy h:mm:ss a').format(dateTime);
    return formattedDate;
  }

  static String convertDateTimeToDMY(DateTime date) {
    String formattedDate = DateFormat('M/d/yyyy').format(date);
    return formattedDate;
  }

  static String convertDateTimeToHHmma(DateTime date) {
    String formattedDate = DateFormat('HH:mm a').format(date);
    return formattedDate;
  }

  static String convertDateAndTime(DateTime date) {
    String formattedDate = DateFormat('dd MMM').format(date);

    return "${formattedDate}";
  }

  static String convertDateToFilterReq(DateTime? date) {
    String formattedDate = DateFormat('yyyy-MM-dd').format(date!);
    return formattedDate;
  }

  static String convertDurationToHHmma(Duration times) {
    /*final time = Duration( minutes: times.inMinutes);
    return "${time.toString().split(":")[0]}:${time.toString().split(":")[1]}";*/
    DateTime ftime = DateFormat("hh:mm").parse(times.toString());
    String ft = DateFormat('hh:mm a').format(ftime);
    return ft;
  }

  static String getEventDateFormat(val) {
    var inputFormat = DateFormat('dd/MM/yyyy');
    var utc = inputFormat.parse(val);
    // var invoiceDates = inputFormat.parse(utc.toLocal().toString(), true);
    var outputFormat = DateFormat('EEE, MMM yy');
    var eventDate = outputFormat.format(utc);
    return eventDate;
  }

  static Future<void> openLink({required String link}) async {
    final Uri encodedURl = Uri.parse(link);

    if (await canLaunchUrl(encodedURl)) {
      await launchUrl(encodedURl, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $encodedURl';
    }
  }

  static RegExp amountRegExp = RegExp(r'([.]*0)(?!.*\d)');
//  RegExp amountRegExp = RegExp(r'.0');

  static bool validateEmail(String email) {
    return RegExp(emailPattern).hasMatch(email);
  }

  static showToast(val) {
    Fluttertoast.showToast(
        msg: val,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: ColorConst.blackColor.withOpacity(0.7),
        textColor: Colors.white,
        fontSize: 16.0);
  }

  static Future<XFile> getCompressionImage(filePath) async {
    int randomImageInt = Random().nextInt(100);

    final dir = await path_provider.getTemporaryDirectory();
    final targetPath = "${dir.absolute.path}/${randomImageInt.toString()}.jpg";

    XFile? result = await FlutterImageCompress.compressAndGetFile(
      filePath,
      targetPath,
      quality: 25,
    );

    return result!;
  }

  static bool showTimer(val) {
    return DateTime.now().compareTo(DateFormat("yyyy-MM-dd").parse(val)) == -1;
  }

  static bool checkCurrentDate(val) {
    return DateTime.now().compareTo(DateFormat("dd/M/yyyy").parse(val)) > 0;
  }

  static Color? colorConvert(String? color) {
    if (color != null) {
      return Color(int.parse(color.replaceAll('#', '0xFF')));
    } else {
      return null;
    }
  }

  static DateTime? backButtonPressedTime;

  static Future<bool> showExitPopup(BuildContext context) async {
    DateTime currentTime = DateTime.now();

    //Statement 1 Or statement2

    bool backButton = backButtonPressedTime == null ||
        currentTime.difference(backButtonPressedTime!) >
            const Duration(seconds: 3);

    if (backButton) {
      backButtonPressedTime = currentTime;
      Const.showToast('Press again to exit');
      return false;
    } else {
      SystemNavigator.pop();
      return true;
    }
  }

  static Future<String> getStoragePath() async {
    String? storageFolderPath;
    if (Platform.isAndroid) {
      Directory appDirectory = await getApplicationDocumentsDirectory();
      final splittedPath = appDirectory.path.split('/');
      splittedPath.removeLast();
      Directory folder = Directory('${splittedPath.join('/')}/files');
      folder.createSync(recursive: true);
      storageFolderPath = folder.path;
    } else {
      Directory appDirectory = await getApplicationDocumentsDirectory();
      storageFolderPath = appDirectory.path;
    }
    return storageFolderPath;
  }

  static Future<String> getTempStoragePath() async {
    String? storageFolderPath;
    if (Platform.isAndroid) {
      Directory appDirectory = await getApplicationDocumentsDirectory();
      final splittedPath = appDirectory.path.split('/');
      splittedPath.removeLast();
      Directory folder = Directory('${splittedPath.join('/')}/files/temp');
      folder.createSync(recursive: true);
      storageFolderPath = folder.path;
    } else {
      Directory appDirectory = await getApplicationDocumentsDirectory();
      // final splittedPath = appDirectory.path.split('/');
      // splittedPath.removeLast();
      Directory folder = Directory('${appDirectory.path}/temp');
      if (await folder.exists()) {
        return folder.path;
      } else {
        folder.createSync(recursive: true);
        storageFolderPath = folder.path;
      }
    }
    return storageFolderPath;
  }

  static Future<void> deleteTempStoragePath() async {
    if (Platform.isAndroid) {
      Directory appDirectory = await getApplicationDocumentsDirectory();
      final splittedPath = appDirectory.path.split('/');
      splittedPath.removeLast();
      Directory folder = Directory('${splittedPath.join('/')}/files/temp');
      if (await folder.exists()) {
        folder.deleteSync(recursive: true);
      }
    } else {
      Directory appDirectory = await getApplicationDocumentsDirectory();
      Directory folder = Directory('${appDirectory.path}/temp');
      if (await folder.exists()) {
        folder.deleteSync(recursive: true);
      }
    }
  }
}

class InputFormatter {
  FilteringTextInputFormatter get number =>
      FilteringTextInputFormatter.allow(RegExp(r"[0-9]"));
}

class RegExpression {
  RegExp phonePattern = RegExp(r'(^[0-9 ]*$)');
}

class FontAsset {
  static const String montserrat = "Montserrat";
  static const String sfPro = "SFProText";

  static const FontWeight regular = FontWeight.w400;
  static const FontWeight medium = FontWeight.w500;
  static const FontWeight semiBold = FontWeight.w600;
  static const FontWeight bold = FontWeight.w700;
}

class MyDivider extends StatelessWidget {
  final double height;
  final Color? color;
  const MyDivider({super.key, this.height = 1, this.color});

  @override
  Widget build(BuildContext context) {
    return Divider(height: height, color: color ?? ColorConst.dividerColor);
  }
}
