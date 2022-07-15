
import 'flutter_ble_lib_platform_interface.dart';

class FlutterBleLib {
  Future<String?> getPlatformVersion() {
    return FlutterBleLibPlatform.instance.getPlatformVersion();
  }
}
