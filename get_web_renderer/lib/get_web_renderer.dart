
import 'dart:async';

import 'package:flutter/services.dart';

class GetWebRenderer {
  static const MethodChannel _channel = MethodChannel('get_web_renderer');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
