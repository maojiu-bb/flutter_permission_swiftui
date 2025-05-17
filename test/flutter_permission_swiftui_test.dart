import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_permission_swiftui/flutter_permission_swiftui.dart';
import 'package:flutter_permission_swiftui/flutter_permission_swiftui_platform_interface.dart';
import 'package:flutter_permission_swiftui/flutter_permission_swiftui_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterPermissionSwiftuiPlatform
    with MockPlatformInterfaceMixin
    implements FlutterPermissionSwiftuiPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterPermissionSwiftuiPlatform initialPlatform = FlutterPermissionSwiftuiPlatform.instance;

  test('$MethodChannelFlutterPermissionSwiftui is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterPermissionSwiftui>());
  });

  test('getPlatformVersion', () async {
    FlutterPermissionSwiftui flutterPermissionSwiftuiPlugin = FlutterPermissionSwiftui();
    MockFlutterPermissionSwiftuiPlatform fakePlatform = MockFlutterPermissionSwiftuiPlatform();
    FlutterPermissionSwiftuiPlatform.instance = fakePlatform;

    expect(await flutterPermissionSwiftuiPlugin.getPlatformVersion(), '42');
  });
}
