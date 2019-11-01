import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gen_deviceid_plugin/gen_deviceid_plugin.dart';

void main() {
  const MethodChannel channel = MethodChannel('gen_deviceid_plugin');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await GenDeviceidPlugin.platformVersion, '42');
  });
}
