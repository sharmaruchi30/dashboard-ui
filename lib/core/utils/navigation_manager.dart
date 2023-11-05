//import 'package:firebase_crashlytics/firebase_crashlytics.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


Future<dynamic> navigateToPageAndRemoveAllPage(Widget routePage,
    {Widget? currentWidget}) {
  return Navigator.of(Get.context!).pushAndRemoveUntil(
      MaterialPageRoute(builder: (context) => routePage), (route) => false);

}

Future<dynamic> navigateToPage(Widget routePage, {Widget? currentWidget}) {
  try {
    FocusManager.instance.primaryFocus!.unfocus();
  } catch (e) {
    //  FirebaseCrashlytics.instance.recordError(e, s);
  }
  return Navigator.push(
    Get.context!,
    CupertinoPageRoute(builder: (context) => routePage),
  );
}

navigateFromBottomToTop(Widget routePage) {
  try {
    FocusManager.instance.primaryFocus!.unfocus();
  } catch (e) {
    //  FirebaseCrashlytics.instance.recordError(e, s);
  }
  Navigator.push(
      Get.context!,
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => routePage,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(0.0, 1.0);
          const end = Offset.zero;
          const curve = Curves.ease;

          var tween =
              Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

          return SlideTransition(
            position: animation.drive(tween),
            child: child,
          );
        },
      ));
}

Future<dynamic> navigateToPageAndRemoveCurrentPage(Widget routePage,
    {Widget? currentWidget}) {
  return Navigator.pushReplacement(
    Get.context!,
    CupertinoPageRoute(builder: (context) => routePage),
  );
  /*return Navigator.of(context).pushReplacement(
    EnterExitRoute(exitPage: currentWidget!, enterPage: routePage),
  );*/
}

class EnterExitRoute extends PageRouteBuilder {
  final Widget? enterPage;
  final Widget? exitPage;

  EnterExitRoute({this.exitPage, this.enterPage})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              enterPage!,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              Stack(
            children: <Widget>[
              SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(0.0, 0.0),
                  end: const Offset(-1.0, 0.0),
                ).animate(animation),
                child: exitPage,
              ),
              SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(1.0, 0.0),
                  end: Offset.zero,
                ).animate(animation),
                child: enterPage,
              )
            ],
          ),
        );
}
