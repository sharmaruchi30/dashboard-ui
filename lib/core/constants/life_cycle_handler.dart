import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class LifecycleEventHandler extends WidgetsBindingObserver {
  final AsyncCallback? resumeCallBack;
  final AsyncCallback? pausedCallBack;
  final AsyncCallback? suspendingCallBack;

  LifecycleEventHandler(
      {required this.pausedCallBack,
      this.suspendingCallBack,
      this.resumeCallBack});

  @override
  Future<void> didChangeAppLifecycleState(AppLifecycleState state) async {
    switch (state) {
      case AppLifecycleState.resumed:
        if (resumeCallBack != null) {
          await resumeCallBack!();
        }
        break;
      case AppLifecycleState.inactive:
      case AppLifecycleState.paused:
        if (pausedCallBack != null) {
          await pausedCallBack!();
        }
        break;
      case AppLifecycleState.detached:
        if (suspendingCallBack != null) {
          await suspendingCallBack!();
        }
        break;
      case AppLifecycleState.hidden:
        // TODO: Handle this case.
    }
  }
}
