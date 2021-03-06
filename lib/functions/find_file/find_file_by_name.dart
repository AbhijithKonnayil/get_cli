import 'dart:io';

import 'package:path/path.dart';

File findFileByName(String name) {
  Directory current = Directory('./lib');
  final list = current.listSync(recursive: true, followLinks: false);
  File contains = list.firstWhere((element) {
    if (element is File) {
      return basename(element.path) == name;
    }
    return false;
  }, orElse: () {
    return File('');
  });
  return contains;
}
