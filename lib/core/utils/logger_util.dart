import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

var logger =
    Logger(printer: PrettyPrinter(methodCount: 0), output: ConsoleOutput());

class ConsoleOutput extends LogOutput {
  @override
  void output(OutputEvent event) {
    event.lines.forEach(printWrapped);
  }

  void printWrapped(String text) {
    final pattern = RegExp('.{1,800}'); // 800 is the size of each chunk
    pattern.allMatches(text).forEach((match) {
      if (kDebugMode) {
        print(match.group(0));
      }
    });
  }

  // This works too.
  void printWrapped2(String text) => debugPrint(text, wrapWidth: 1024);
}

void timber(dynamic content, {bool usePrint = false}) {
  if (usePrint) {
    if (kDebugMode) {
      print(content);
    }
  } else {
    logger.d(content);
  }
}
