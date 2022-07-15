import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ble_lib/flutter_ble_lib.dart';
import 'package:flutter_ble_lib/flutter_ble_lib_platform_interface.dart';
import 'package:flutter_ble_lib/flutter_ble_lib_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterBleLibPlatform 
    with MockPlatformInterfaceMixin
    implements FlutterBleLibPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterBleLibPlatform initialPlatform = FlutterBleLibPlatform.instance;

  test('$MethodChannelFlutterBleLib is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterBleLib>());
  });

  test('getPlatformVersion', () async {
    FlutterBleLib flutterBleLibPlugin = FlutterBleLib();
    MockFlutterBleLibPlatform fakePlatform = MockFlutterBleLibPlatform();
    FlutterBleLibPlatform.instance = fakePlatform;
  
    expect(await flutterBleLibPlugin.getPlatformVersion(), '42');
  });
}
