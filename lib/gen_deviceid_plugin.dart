import 'dart:async';

import 'package:flutter/services.dart';

class GenDeviceidPlugin {
  static const MethodChannel _channel =
      const MethodChannel('gen_deviceid_plugin');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
