import 'package:collection/collection.dart';

extension ListFilter<T> on List<T>? {
  T? firstOrNull(bool Function(T element) test) {
    if (this == null) return null;
    return this?.firstWhereOrNull(test);
  }

  bool isNullOrEmpty() {
    return this == null || this!.isEmpty;
  }

  bool isNotNullOrEmpty() {
    return !isNullOrEmpty();
  }

  bool hasAll(List<T> anotherList) {
    if (isNullOrEmpty()) return false;
    bool containsAllElement = true;
    for (var i = 0; i < this!.length; i++) {
      containsAllElement = anotherList.contains(this![i]);
      if (!containsAllElement) break;
    }
    return containsAllElement;
  }
}

extension EmailValidator on String? {
  bool isValidEmail() {
    return RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(this!);
  }
}

extension StringNullablity on String? {
  bool isNullOrEmpty() {
    return this == null || this!.isEmpty;
  }

  bool isNotNullOrEmpty() {
    return !isNullOrEmpty();
  }

  String orEmpty() {
    if (isNullOrEmpty()) return "";
    return this!;
  }

  String orDash() {
    if (isNullOrEmpty()) {
      return "-";
    } else {
      return this!;
    }
  }

  String ifEmpty(String another) {
    if (isNullOrEmpty()) {
      return another;
    } else {
      return this!;
    }
  }

  String removeExtras() {
    if (isNullOrEmpty()) return "";
    var trimmedString = this!.trim();
    var firstReplacedString = trimmedString.replaceAll("-", "");
    var finalReplacedString = firstReplacedString.replaceAll("+", "");
    return finalReplacedString;
  }

  bool isEqualIgnoreCase(String? another) {
    if (isNullOrEmpty() || another.isNullOrEmpty()) return this == another;
    return this!.toLowerCase() == another!.toLowerCase();
  }

  String withColon(dynamic value) {
    return "$this: ${value.toString()}";
  }

  String withEndSpace() {
    return "$this ";
  }

  String withComma(dynamic value) {
    return "$this, ${value.toString()}";
  }

  String withEndDot() {
    return "$this.";
  }

  String withAnother(dynamic value) {
    if (value != null) {
      return "$this ${value.toString()}";
    } else {
      return "$this ";
    }
  }

  String addEndSpace() {
    return "$this ";
  }

  String withBrackets(dynamic value) {
    if (isNullOrEmpty()) return "(${value.toString()})";
    return "$this (${value.toString()})";
  }
}

bool notNull(String? data) {
  return data.isNotNullOrEmpty();
}

String orEmpty(String? data) {
  return data.orEmpty();
}
