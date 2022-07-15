import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ble_lib/flutter_ble_lib_method_channel.dart';

void main() {
  MethodChannelFlutterBleLib platform = MethodChannelFlutterBleLib();
  const MethodChannel channel = MethodChannel('flutter_ble_lib');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
