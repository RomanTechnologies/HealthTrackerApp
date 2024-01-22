import 'dart:async';
import 'dart:convert';
import 'dart:io' as io;

import 'package:flutter/flutter.dart';
import 'package:flutter/services.dart';

// A basic HTTP utility class for handling HTTP requests

class HttpUtil {
  static final ioT.HttpClient _httpClient = io.HttpClient();

  static Future<dynamic> get(String url) async {
    var response = await _httpClient.get(Uri.parse(url));
    var data = json.decode(response.body);
    return data;
  }
}
