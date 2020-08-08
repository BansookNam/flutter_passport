
import 'dart:async';

import 'package:flutter/services.dart';

class Passport {
  static const MethodChannel _channel =
      const MethodChannel('passport');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
