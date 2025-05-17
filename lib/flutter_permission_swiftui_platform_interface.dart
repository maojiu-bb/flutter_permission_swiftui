import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_permission_swiftui_method_channel.dart';

abstract class FlutterPermissionSwiftuiPlatform extends PlatformInterface {
  /// Constructs a FlutterPermissionSwiftuiPlatform.
  FlutterPermissionSwiftuiPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterPermissionSwiftuiPlatform _instance = MethodChannelFlutterPermissionSwiftui();

  /// The default instance of [FlutterPermissionSwiftuiPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterPermissionSwiftui].
  static FlutterPermissionSwiftuiPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterPermissionSwiftuiPlatform] when
  /// they register themselves.
  static set instance(FlutterPermissionSwiftuiPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
