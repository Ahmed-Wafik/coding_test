import 'dart:convert';

import 'package:flutter/services.dart';

class AssetsReaderService extends CoreAssetsReader {
  @override
  Future<List> readListJsonDataFromAssets(String path) async {
    try {
      final String response = await rootBundle.loadString(path);
      return jsonDecode(response);
    } catch (e) {}
    return [];
  }
}

abstract class CoreAssetsReader {
  Future<List> readListJsonDataFromAssets(String path);
}
