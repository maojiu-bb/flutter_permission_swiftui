
import 'flutter_permission_swiftui_platform_interface.dart';

class FlutterPermissionSwiftui {
  Future<String?> getPlatformVersion() {
    return FlutterPermissionSwiftuiPlatform.instance.getPlatformVersion();
  }
}
