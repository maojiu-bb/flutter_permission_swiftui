import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_permission_swiftui_platform_interface.dart';

/// An implementation of [FlutterPermissionSwiftuiPlatform] that uses method channels.
class MethodChannelFlutterPermissionSwiftui extends FlutterPermissionSwiftuiPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_permission_swiftui');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
