//image compress
import 'dart:io';
import 'dart:math' as math_log; // did this becuase it conflicts with dart:developer log function

import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:path_provider/path_provider.dart';

Future<File> compressFile(File input) async {
  var targetPath = await getApplicationDocumentsDirectory();
  return (await FlutterImageCompress.compressAndGetFile(
        input.absolute.path,
        '${targetPath.absolute.path}/${DateTime.now().millisecondsSinceEpoch}.jpg',
        quality: 75,
        minWidth: 512,
        minHeight: 512,
      )) ??
      input;
}

/// Formats bytes and returns a string
String formatBytes(int bytes, int decimals) {
  if (bytes <= 0) {
    return '0 B';
  }
  const List<String> suffixes = <String>[
    'B',
    'KB',
    'MB',
    'GB',
    'TB',
    'PB',
    'EB',
    'ZB',
    'YB',
  ];
  final int i = (math_log.log(bytes) / math_log.log(1024)).floor();
  return '${(bytes / math_log.pow(1024, i)).toStringAsFixed(decimals)} ${suffixes[i]}';
}

//gets file size
String getFileSize({required File file}) => formatBytes(file.lengthSync(), 2);
String getFileSizeMb({required String filePickedPath}) => "${((File(filePickedPath)).lengthSync() / 1024 / 1024).toStringAsFixed(2)}Mb";
